
#include "composed_email.h"

#include <stdio.h>
#include <string.h>

void get_email_info(struct composed_email* email)
{
    printf("Enter Email Receiver: ");
    fgets(email->email_receiver, sizeof(email->email_receiver), stdin);
    email->email_receiver[strcspn(email->email_receiver, "\n")] = 0;

    printf("Enter Email Subject: ");
    fgets(email->email_subject, sizeof(email->email_subject), stdin);
    email->email_subject[strcspn(email->email_subject, "\n")] = 0;

    printf("Enter Email Body: ");
    fgets(email->email_body, sizeof(email->email_body), stdin);
    email->email_body[strcspn(email->email_body, "\n")] = 0;
}