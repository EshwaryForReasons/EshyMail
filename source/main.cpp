
#include "composed_email.h"
#include "email.h"
#include "accounts.h"
#include "util.h"
#include "ui.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <thread>
#include <chrono>

#include <curl/curl.h>
#include <gtk-3.0/gtk/gtk.h>

using namespace std::chrono_literals;

int main(int argc, char** argv)
{
    ui::init_ui(argc, argv);

    curl_global_init(CURL_GLOBAL_ALL);
    CURL* curl = curl_easy_init();

    if (!curl)
        return 0;

    //Setup accounts
    struct account accounts[3];
    strcpy(accounts[0].email, "havenremixgd@gmail.com");
    strcpy(accounts[0].password, "ayxl iadq zuzj sujd");
    strcpy(accounts[0].mail_server_url, "smtp.gmail.com:587");
    strcpy(accounts[1].email, "not_forsicen@outlook.com");
    strcpy(accounts[1].password, "rxtvfghpaquwqaov");
    strcpy(accounts[1].mail_server_url, "smtp.outlook.com:587");
    strcpy(accounts[2].email, "eshwarymishra@yahoo.com");
    strcpy(accounts[2].password, "mpyo nruu tbas gmxn");
    strcpy(accounts[2].mail_server_url, "smtp.mail.yahoo.com:587");

    // struct composed_email* composed_email = (struct composed_email*)malloc(sizeof(struct composed_email));
    // get_email_info(composed_email);
    // send_email(curl, &accounts[0], composed_email);

    bool do_once = true;
    while(true)
    {
        gtk_main_iteration();

        if(do_once)
        {
            read_emails(curl, &accounts[0]);
            do_once = false;
        }

        std::cout << "test" << std::endl;
        std::this_thread::sleep_for(20ms);
    }

    curl_easy_cleanup(curl);
    curl_global_cleanup();

    return 0;
}