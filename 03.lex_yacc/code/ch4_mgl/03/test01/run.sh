flex ch3-01.l
bison -d ch3-01.y
gcc -o xx ch3-01.tab.c lex.yy.c -ly -ll
