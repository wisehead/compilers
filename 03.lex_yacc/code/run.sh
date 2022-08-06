#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2020
#        Mail: chenhui13@baidu.com
# Create Time: 2020/05/26-18:23:42
#############################################################
#!/bin/sh 
#no need to add yywrap()
lex test.l
cc lex.yy.c -ll
###
flex test.l
bison -d test.y
gcc test.tab.c lex.yy.c -ly -ll
#need to install flex-devel/bison-devel
