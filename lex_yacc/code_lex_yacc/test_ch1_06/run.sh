#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/05/27-12:41:38
#############################################################
#!/bin/sh 
lex ch1-06.l
yacc -d ch1-06.y
cc lex.yy.c y.tab.c -ll
