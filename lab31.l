%{
#include"y.tab.h"
%}
%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;}
"+" return PLUS;
"*" return MUL;
"(" return OP;
")" return CP;
%%
