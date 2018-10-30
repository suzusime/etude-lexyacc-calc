%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include "calc.tab.h"
%}
%%
"+"	return ADD;
"\n"	return LF;
[1-9][0-9]*	{
	yylval.int_value = atoi(yytext);
	return INT_LITERAL;
}
%%

