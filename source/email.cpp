
#include "email.h"
#include "composed_email.h"
#include "accounts.h"
#include "util.h"
#include "ui.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sstream>
#include <algorithm>
#include <regex>
#include <iostream>

char* payload;

struct upload_status
{
    size_t bytes_read;
};

struct memory_object
{
    char* memory;
    size_t size;
    size_t allocated;
};

static size_t payload_source(char* ptr, size_t size, size_t nmemb, void* userp)
{
    struct upload_status* upload_ctx = (struct upload_status*)userp;
    const char* data;
    size_t room = size * nmemb;

    if(size == 0 || nmemb == 0 || size * nmemb < 1)
        return 0;

    data = &payload[upload_ctx->bytes_read];

    if(data)
    {
        size_t len = strlen(data);
        if(room < len)
            len = room;
        memcpy(ptr, data, len);
        upload_ctx->bytes_read += len;
        return len;
    }

    return 0;
}

static size_t write_callback(char* ptr, size_t size, size_t nmemb, void* userdata)
{
    size_t realsize = size * nmemb;
    struct memory_object* memory = (struct memory_object*)userdata;

    if (!realsize)
        return 0;
    
    if((memory->size + realsize + 1) > memory->allocated)
    {
        size_t bytes = 65536 + memory->size + realsize + 1;
        char* temp = (char*)realloc(memory->memory, bytes);

        if(!temp)
        {
            fprintf(stderr, "Error: Out of memory, realloc returned NULL");
            return 0;
        }

        memory->memory = temp;
        memory->allocated = bytes;
    }

    memcpy(&(memory->memory[memory->size]), ptr, realsize);
    memory->size += realsize;
    memory->memory[memory->size] = 0;

    return realsize;
}

void send_email(CURL* curl, struct account* account, struct composed_email* composed_email)
{
    CURLcode res = CURLE_OK;
    struct curl_slist* recipients = NULL;
    struct upload_status upload_ctx = {0};

    //Construct payload
    payload = (char*)malloc(sizeof(composed_email->email_receiver) + sizeof(account->email) + sizeof(composed_email->email_subject) + sizeof(composed_email->email_body) + 34);
    sprintf(payload, "To: <%s>\nFrom: <%s>\nSubject: %s\n%s", composed_email->email_receiver, account->email, composed_email->email_subject, composed_email->email_body);

    curl_easy_setopt(curl, CURLOPT_USERNAME, account->email);
    curl_easy_setopt(curl, CURLOPT_PASSWORD, account->password);
    curl_easy_setopt(curl, CURLOPT_URL, account->mail_server_url);

    curl_easy_setopt(curl, CURLOPT_USE_SSL, (long)CURLUSESSL_ALL);

    //Due to lack of certificate, we disable verification
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, CURL_FALSE);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, CURL_FALSE);

    char email_from[strlen(account->email) + 2];
    sprintf(email_from, "<%s>", account->email);

    char email_to[strlen(composed_email->email_receiver) + 2];
    sprintf(email_to, "<%s>", composed_email->email_receiver);

    curl_easy_setopt(curl, CURLOPT_MAIL_FROM, email_from);

    recipients = curl_slist_append(recipients, email_to);
    curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, recipients);

    curl_easy_setopt(curl, CURLOPT_READFUNCTION, payload_source);
    curl_easy_setopt(curl, CURLOPT_READDATA, &upload_ctx);
    curl_easy_setopt(curl, CURLOPT_UPLOAD, CURL_TRUE);

    curl_easy_setopt(curl, CURLOPT_VERBOSE, CURL_FALSE);

    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
        fprintf(stderr, "FAILED: %s\n", curl_easy_strerror(res));
    
    curl_slist_free_all(recipients);
}

void read_emails(CURL* curl, struct account* account)
{
    CURLcode res = CURLE_OK;
    struct memory_object body = {0,};
    struct memory_object headers = {0,};

    curl_easy_setopt(curl, CURLOPT_USERNAME, account->email);
    curl_easy_setopt(curl, CURLOPT_PASSWORD, account->password);
    curl_easy_setopt(curl, CURLOPT_URL, "imaps://imap.gmail.com:993/INBOX/;MAILINDEX=1500");

    curl_easy_setopt(curl, CURLOPT_USE_SSL, (long)CURLUSESSL_ALL);

    //Due to lack of certificate, we disable verification
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, CURL_FALSE);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, CURL_FALSE);

    curl_easy_setopt(curl, CURLOPT_PROTOCOLS_STR, "imaps");

    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_callback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void*)&body);
    curl_easy_setopt(curl, CURLOPT_HEADERDATA, (void*)&headers);

    curl_easy_setopt(curl, CURLOPT_VERBOSE, CURL_FALSE);

    res = curl_easy_perform(curl);

    const std::string email_content = decode_quoted_printable(body.memory);
    ui::load_html(email_content.c_str());

    if(res != CURLE_OK)
        fprintf(stderr, "FAILED: %s\n", curl_easy_strerror(res));
}