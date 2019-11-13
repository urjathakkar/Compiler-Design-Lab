%{
int a,b,c,d,e,f;
%}
DIGIT [0-9]+
alpha [a-z]+
ID [a-z][a-z0-9]*
SPACES [ \n\t]
symbol [@!#$%^&*(){}~] 
vowels [aeiou]
%%
{DIGIT}+ {printf("it is a number %s",yytext);b++;}
{SPACES}+ {printf("space ");c++;}
{symbol}+ {printf("symbol");d++;}
{vowels} {printf("vowel");e++;}
{ID}+ {printf("it is an identifier %s", yytext);a++;}
{alpha}+/" " {f++;}

. {printf("%s",yytext);}

%%

int main()
{
	yylex();
	printf("\ntotal no of identifiers are %d\n",a);
	printf("\ntotal no are %d\n",b);
	printf("\nno of white spaces %d\n",c);
	printf("\ntotal no are symbols %d\n",d);
	printf("\nno of vowels %d\n",e);	
	printf("\ntotal no of words : %d \n",f);	
	return 0;
}

