%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
%}
%token DIGIT
%%
line    :expr'\n' { printf("%d\n",$1);return;}
        ;
expr    :expr'+'term { $$=$1+$3;}
		|expr'-'term { $$=$1-$3;}
		|term
		;
term	:term'*'factor {$$=$1*$3;}
		|factor
		;
factor	:'('expr')' {$$=$2;}
        |DIGIT
        ;
%%
main(){
    return yyparse();
}
 
int yylex(){
    int c;
    while ((c=getchar())==' ');
    if(isdigit(c)){
        yylval=c-'0';
        return DIGIT;
    }
    return c;
}
int yyerror(char *s){
    fprintf(stderr,"%s\n",s);
    return 1;
}
