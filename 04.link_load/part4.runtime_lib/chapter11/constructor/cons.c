/*******************************************************************************
 *      File Name: cons.c                                               
 *         Author: Hui Chen. (c) 2021                             
 *           Mail: chenhui13@baidu.com                                        
 *   Created Time: 2021/02/13-21:25                                    
 * Modified Time: 2021/02/13-21:25                                    
 *******************************************************************************/
#include <stdio.h>
void my_init(void) __attribute__ ((constructor));
void my_init(void)
{
	printf("Hello ");
}
int main()
{
	printf("World!\n");
	return 0;
}
