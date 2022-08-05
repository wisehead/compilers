/*******************************************************************************
 *      File Name: target.c                                               
 *         Author: Hui Chen. (c) 2021                             
 *           Mail: chenhui13@baidu.com                                        
 *   Created Time: 2021/01/31-21:38                                    
 * Modified Time: 2021/01/31-21:38                                    
 *******************************************************************************/
#include <stdio.h>
#include "bfd.h"

int main() {
	const char** t = bfd_target_list();
    while (*t) {
		printf("%s\n",*t);
		t++;
	}
}
