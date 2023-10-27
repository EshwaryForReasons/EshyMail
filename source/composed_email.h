
#pragma once

struct composed_email
{
    char email_receiver[50];
    char email_subject[500];
    char email_body[1 << 16];
};

void get_email_info(struct composed_email* email);