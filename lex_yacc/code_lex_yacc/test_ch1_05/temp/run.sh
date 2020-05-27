#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/05/26-20:22:22
#############################################################
#!/bin/sh 
lex ch1-05.l
yacc -d ch1-05.y 
cc -o test lex.yy.c y.tab.c -ll

#gcc 
#need to add yywrap. no need to link -ll
#gcc lex.yacc.c y.tab.c
