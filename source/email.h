
#pragma once

#include "accounts.h"
#include "composed_email.h"

#include <curl/curl.h>

void send_email(CURL* curl, struct account* account, struct composed_email* composed_email);
void read_emails(CURL* curl, struct account* account);