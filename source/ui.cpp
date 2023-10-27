
#include "ui.h"

#include <webkitgtk-4.0/webkit2/webkit2.h>

#include <iostream>

static WebKitWebView* webview = nullptr;

static int idle_callback(void* user_data)
{
    return false;
}

static void on_image_taken(GObject* object, GAsyncResult* result, void* data)
{
    std::cout << "Image Taken!" << std::endl;

    GError* error = nullptr;
    if(cairo_surface_t* image = webkit_web_view_get_snapshot_finish(webview, result, &error))
        cairo_surface_write_to_png(image, "output.png");
    std::cout << (error ? error->message : "") << std::endl;
}

static void on_load_changed()
{
    std::cout << "Page loaded" << std::endl;

    webkit_web_view_get_snapshot(webview, WEBKIT_SNAPSHOT_REGION_FULL_DOCUMENT, WEBKIT_SNAPSHOT_OPTIONS_TRANSPARENT_BACKGROUND, NULL, on_image_taken, NULL);
}

void ui::init_ui(int argc, char** argv)
{
    gtk_init(&argc, &argv);
    g_idle_add(idle_callback, NULL);

    webview = WEBKIT_WEB_VIEW(webkit_web_view_new());
    webkit_web_view_set_settings(webview, webkit_settings_new());
}

void ui::load_html(const char* html)
{
    webkit_web_view_load_html(webview, html, NULL);
    g_signal_connect(webview, "load-changed", G_CALLBACK(on_load_changed), NULL);
}