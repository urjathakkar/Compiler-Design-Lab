%{
#include<stdio.h>
%}
%token NUMBER PLUS MUL OP CP
%%
S : E {printf("value of expression os: %d" , $1);}
;
E : E PLUS T {$$=$1+$3;}
  | T {$$ = $1;}
;
T : T MUL F {$$=$1*$3;}
  | F {$$=$1;}
  ;
F : OP E CP {$$=$2;}
  | NUMBER {$$=$1;}
  ;
%%
int main()
{
	yyparse();
	return 0;
}
