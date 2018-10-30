%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
%}
%union {
	int int_value;
}
%token LF
%token <int_value> INT_LITERAL
%left ADD
%type <int_value> expr

%%
list : /* empty */
	 | list expr LF { printf("%d\n", $2); }
	 ;

expr : expr ADD expr { $$ = $1 + $3; }
	 | INT_LITERAL
	 ;
%%
/*#include "lex.yy.c"*/
int main(void){
	yyparse();
}
