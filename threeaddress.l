%{
#include"y.tab.h"
extern char yylval
%}
%%
[0-9]+ {yylval.symbol=(char)(yytext[0]);return NUMBER;}
[a-z] {yylval.symbol= (char)(yytext[0]);return LETTER;}
"+" return PLUS;
"*" return MUL;
"(" return OP;
")" return CP;
"-" return SUB;
"/" return DIV;
%%
