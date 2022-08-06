#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/08/06-19:19:31
#############################################################
#!/bin/sh 
flex ch3-05.l
byacc -d ch3-05.y
gcc lex.yy.c y.tab.c -ll -ly -lm
