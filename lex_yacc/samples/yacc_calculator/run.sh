#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: alex.chenhui@gmail.com
# Create Time: 2022/08/05-11:00:43
#############################################################
#!/bin/sh 
yacc a.y
gcc y.tab.c -w
 
Toa@DESKTOP-499IG24 ~
$ ./a.exe
3+4*2*(2+3)
43
