LEX = flex -l
YACC = byacc
CC = gcc -DYYDEBUG=1

ch3-05: y.tab.o lex.yy.o
	$(CC) -o ch3-05 y.tab.o lex.yy.o -ly -ll -lm

lex.yy.o: lex.yy.c y.tab.h

y.tab.o: y.tab.c ch3hdr2.h

y.tab.c y.tab.h: ch3-05.y
	$(YACC) -d ch3-05.y

lex.yy.c: ch3-05.l
	$(LEX) ch3-05.l

