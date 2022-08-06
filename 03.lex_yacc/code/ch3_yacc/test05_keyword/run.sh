#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/08/06-19:15:11
#############################################################
#!/bin/sh 
flex ch3-05.l
bison -d ch3-05.y
gcc lex.yy.c ch3-05.tab.c -ly -ll -lm
