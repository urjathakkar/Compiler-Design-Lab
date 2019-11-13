%{
#include"y.tab.h"
#include<stdio.h>

char addtotable(char,char,char);


int index1=0;
char temp = 'A'-1;


struct expr{

char operand1;
char operand2;
char operator;
char result;
};

%}
%left '+' '-'
%left '/' '*'

%token <symbol> LETTER NUMBER
%type <symbol> exp
%%
S : E {printf("value of expression os: %c" , $1);}
;
E : E '+' F {$$ = addtotable((char)$1,(char)$3,'+');}
  | F {$$ = (char)$1;}
;
F : F '-' T {$$ = addtotable((char)$1,(char)$3,'-');}
  | T {$$ = (char)$1;}
;
T : T '*' U {$$ = addtotable((char)$1,(char)$3,'*');}
  | U {$$ = (char)$1;}
;
U : U '/' U {$$ = addtotable((char)$1,(char)$3,'/');}
  | NUMBER {$$ = (char)$1;}
  | LETTER {(char)$1;}
;
%%
struct expr arr[20]; 

char addtotable(char a, char b, char o)
{
    temp++;
    arr[index1].operand1 =a;
    arr[index1].operand2 = b;
    arr[index1].operator = o;
    arr[index1].result=temp;
    index1++;
    return temp;
}

void threeAdd()
{
    int i=0;
    char temp='A';
    while(i<index1)
    {
        printf("%c:=\t",arr[i].result);
        printf("%c\t",arr[i].operand1);
        printf("%c\t",arr[i].operator);
        printf("%c\t",arr[i].operand2);
        i++;
        temp++;
        printf("\n");
    }
}

int main()
{
    printf("Enter the expression: ");
    yyparse();
    threeAdd();
    printf("\n");
    return 0;
}
