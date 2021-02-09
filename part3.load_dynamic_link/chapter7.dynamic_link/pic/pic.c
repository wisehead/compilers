/*******************************************************************************
 *      File Name: pic.c                                               
 *         Author: Hui Chen. (c) 2021                             
 *           Mail: chenhui13@baidu.com                                        
 *   Created Time: 2021/02/09-16:08                                    
 * Modified Time: 2021/02/09-16:08                                    
 *******************************************************************************/
#include <stdio.h>

static int a;
extern int b;
extern void ext();

void bar()
{
	a = 1;
	b = 2;
}

void foo()
{
	bar();
	ext();
}
