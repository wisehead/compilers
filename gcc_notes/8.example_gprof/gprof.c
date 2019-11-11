/*******************************************************************************
 *      file name: gprof.c                                               
 *         author: Hui Chen. (c) 2019                             
 *           mail: chenhui13@baidu.com                                        
 *   created time: 2019/11/11-18:57:29                              
 *  modified time: 2019/11/11-18:57:29                              
 *******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
void f1()
{
    int i; int* p;
 
    for (i = 0; i < 10; i++)
    {
        p = malloc(sizeof(int));
        *p = 10;
        free(p);
    }
}
 
void f2()
{
    int i; int* p;
 
    for (i = 0; i < 20; i++)
    {
        p = malloc(sizeof(int));
        *p = 10;
        free(p);
    }
}
 
void f3()
{
    int i; int* p;
 
    for (i = 0; i < 30; i++)
    {
        p = malloc(sizeof(int));
        *p = 10;
        free(p);
    }
}
 
int main(int argc, char** argv)
{
    int i;
 
    for (i = 0; i < 1000000; i++)
    {
        f1();
        f2();
        f3();
    }
 
    return 0;
}
