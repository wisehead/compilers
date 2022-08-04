#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/05/26-18:23:42
#############################################################
#!/bin/sh 
flex test.l
gcc lex.yy.c

#option 2
#no need to add yywrap()
lex ch1-02.l
cc lex.yy.c -ll
