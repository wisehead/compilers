/*******************************************************************************
 *      file name: Hello.c                                               
 *         author: Hui Chen. (c) 2019                             
 *           mail: chenhui13@baidu.com                                        
 *   created time: 2019/11/11-18:40:07                              
 *  modified time: 2019/11/11-18:40:07                              
 *******************************************************************************/
#include <stdio.h>
int _abs(int a)
{
	if (a < 0) {
		a = 0-a; 
	}
	return a;
}

int _max(int a, int b)
{
	int max = a;
	if (a < b) {
		max = b;
	}
	return max;
}

void sort( int list[], int size)
{
	int i, j, temp, swap = 1;
	while (swap) {
		swap = 0;
		for ( i = (size-1) ; i >= 0 ; i-- ) {
			for ( j = 1 ; j <= i ; j++ ) {
				if ( list[j-1] > list[j] ) {
						temp = list[j-1];
						list[j-1] = list[j];
						list[j] = temp;
						swap = 1;
				}//if 
			}//for
		} //for
	}//while
}

int main() 
{
	int x = 4;
	int a = 15,b = 20;
	int theList[10]={10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
	int i;
	sort( theList, 10 );

	for (i = 0 ; i < 10 ; i++) { 
		printf("%d\n", theList[i]); 
	}

	printf("Hello Ubuntu!!\n");
	printf("abs(%d) is %d\n",x,_abs(x));
	printf("max(%d,%d) is %d\n",a,b,_max(a,b));
	return 0; 
}
