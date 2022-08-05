%{
//#include "y.tab.h"
#include "ch3-01.tab.h"
extern int yylval;
int yylex();
%}

%%
[0-9]+	{ yylval = atoi(yytext); return NUMBER; }
[ \t]	;		/* ignore white space */
\n	return 0;	/* logical EOF */
.	return yytext[0];
%%
