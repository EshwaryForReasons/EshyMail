
#pragma once

#include <stdbool.h>

struct account
{
    char email[50];
    char password[50];
    bool b_currently_signed_in;
    char mail_server_url[50];
};