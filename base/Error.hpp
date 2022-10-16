#ifndef __ERROR_H__
#define __ERROR_H__

#include <iostream>
#include <string>
#include <map>
#include <vector>

typedef int ErrorCode;
std::map<int, std::string> codes = {
    {0, "(0) -> Success"},
    {1, "(1) -> Error (Unknown)"},
    {2, "(2) -> Error (Unknown)"},
    {NULL, "What are you trying to do?"},
};
std::vector<std::string> errors;

namespace Base
{
    std::string DecodeError(ErrorCode code)
    {
        return codes.at(code);
    }

    void AddError(ErrorCode code)
    {
        errors.push_back(DecodeError(code));
    }

    ErrorCode PrintErrors()
    {
        if (errors.size() < 1)
        {
            return 2;
        }
        for (std::string err : errors)
        {
            std::cout << err << std::endl;
        }
        return 0;
    }
}
#endif // __ERROR_H__