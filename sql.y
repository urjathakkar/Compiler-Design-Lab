%{
#include<stdio.h>
%}
%token KEYWORDS VARIABLE NUMBER SPACE OPERATOR SC KEY LO AS
%%
F : S {printf("Valid Syntax");}
;
S : KEY VARIABLE KEYWORDS VARIABLE E SC
  | KEY AS KEYWORDS VARIABLE E SC 
;
E : KEYWORDS VARIABLE OPERATOR NUMBER
  | KEYWORDS VARIABLE OPERATOR NUMBER LO VARIABLE OPERATOR NUMBER  
  |  
;
%%
int main()
{
	yyparse();
	return 0;
}
