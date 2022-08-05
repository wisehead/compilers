%{
#include <stdio.h>
#include "lex.yy.c"
#define YYSTYPE int
%}

%token NAME NUMBER
%%
statement:	NAME '=' expression
	|	expression		{ printf("= %d\n", $1); }
	;

expression:	expression '+' NUMBER	{ $$ = $1 + $3; }
	|	expression '-' NUMBER	{ $$ = $1 - $3; }
	|	NUMBER			{ $$ = $1; }
	;
%%
int main()
{
    return yyparse();
}
void yyerror(char* s)
{
    fprintf(stderr,"%s",s);
}
int yywrap()
{
    return 1;
}
