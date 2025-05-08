/*
 * tools.cpp
 *
 *  Created on: 2012-2-1
 *      Author: Administrator
 */

#include "tools.h"
#include "my_struct.h"
#include <string.h>

#include <openssl/md5.h>

/**
 *@brief 字符串转小写
 *@param input ptrSrc 字符指针
 *@return 转小写后的字符串
 */
std::string Lower(const char* ptrSrc)
{
    std::string lower(ptrSrc);
    for(size_t i = 0; i < lower.size(); i++)
        lower[i] = tolower(lower[i]);

    return lower;
}

/**
 *@brief 如果是手机号，去掉"86"前缀
 *  判断依据：入参是13位数字,且 前3位是"861"
 *@param input strSrc  ： userNumber 有可能为 手机号或者别名， 函数处理中不涉及对该入参的修改
 *@return  返回的 userNumber ，已经去了 "86"前缀
 */
std::string Trim86(const std::string& strSrc)
{
    std::string strRet(strSrc);

    if( 13 == strRet.size() &&
        IsAllDigit(strRet.c_str()) &&
        0 == strncmp(strRet.c_str(), "861", 3) )
    {
        strRet.erase(0, 2);
    }

    return strRet;
}

/**
 *@brief 所有字符是否都是数字
 *@return 0 否         非0  是
 */
int IsAllDigit(const char* ptrSrc)
{
    int iRetVal = 1;
    char * ptrCurr = (char*)ptrSrc;

    //是否有非数字的字母
    while(*ptrCurr)
    {
        if(0 == isdigit(*ptrCurr))
        {
            iRetVal = 0;
            break;
        }
        ptrCurr++;
    }

    return iRetVal;
}


