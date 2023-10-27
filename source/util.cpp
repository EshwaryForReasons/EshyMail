
#include "util.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include <sstream>
#include <regex>

#include <iostream>

const char* ct = "content-transfer-encoding:";
const char* CT = "Content-Transfer-Encoding:";

std::string decode_quoted_printable(char* quoted_printable)
{
    const std::string content = quoted_printable;
    const size_t start_pos = content.find("<!DOCTYPE html");
    const size_t end_pos = content.find("</html>");
    const std::string email_content = std::regex_replace(content.substr(start_pos, (end_pos + 7) - start_pos), std::regex("=\\r\\n"), "");

    std::stringstream sdecoded;
    std::istringstream sencoded(email_content);

    char ch;
    while(sencoded.get(ch))
    {
        if(ch == '=')
        {
            char hex[3];
            sencoded.get(hex, 3);
            int value = 0;

            std::istringstream(hex) >> std::hex >> value;
            
            sdecoded.put(char(value));
        }
        else
        {
            sdecoded.put(ch);
        }
    }

    return sdecoded.str();
}