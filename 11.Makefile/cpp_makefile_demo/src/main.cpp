
#include <sys/resource.h>
#include <signal.h>
#include <stdio.h>
#include <string>

#include "my_struct.h"
#include "tools.h"

using namespace std;

int main (int argc, char **argv)
{
	std::string strTmp;
	strTmp = "HELLO CPP";

	printf("%s\n", strTmp.c_str());
	printf("%s\n", Lower(strTmp.c_str()).c_str());

}

