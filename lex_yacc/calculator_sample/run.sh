#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/05/18-10:54:49
#############################################################
#!/bin/sh 
flex scan.l
yacc -d calc.y
gcc y.tab.c
