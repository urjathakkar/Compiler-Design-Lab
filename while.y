%{
#include<stdio.h>
%}
%token KEYWORDS OB CB OC CC VARIABLE NUMBER SPACE OPERATOR SC KEY LO 
%%
F : S {printf("Valid Syntax");}
;
S : KEY OB VARIABLE OPERATOR VARIABLE CB E
  | KEY OB VARIABLE OPERATOR NUMBER CB E
;
E : OC T CC
;
T : VARIABLE OPERATOR NUMBER SC
  | KEYWORDS VARIABLE SC 
  ;
%%
int main()
{
	yyparse();
	return 0;
}
