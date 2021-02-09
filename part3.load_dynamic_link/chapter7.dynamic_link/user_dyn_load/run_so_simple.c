/*******************************************************************************
 *      File Name: run_so_simple.c                                               
 *         Author: Hui Chen. (c) 2021                             
 *           Mail: chenhui13@baidu.com                                        
 *   Created Time: 2021/02/09-16:44                                    
 * Modified Time: 2021/02/09-16:44                                    
 *******************************************************************************/
#include <stdio.h>
#include <dlfcn.h>

int main(int argc, char* argv[]){
	void* handle;
	double (*func)(double);
	char* error;

	handle = dlopen(argv[1], RTLD_NOW);
	if (handle == NULL) {
		printf("Open library %s error: %s\n", argv[1], dlerror());
		return -1;
	}

	func = dlsym(handle, "sin");
	if (error = dlerror() != NULL) {
		printf("Symbol sin not found: %s\n", error);
		goto exit_runso;
	}

	printf("%f\n", func(3.1415926 / 2));

exit_runso:
	dlclose(handle);
}
