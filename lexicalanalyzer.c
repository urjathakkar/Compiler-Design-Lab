#include<stdio.h>
#include<string.h>
int tokens=0;
int keyword(char word[])
{
	int i=0,flag=0;
	char keywords[32][10] = {
				"auto" , "break" , "case" ,"const" , "continue" , "char" , "default" , "do" ,
				"int" , "long" , "register" , "return" , "short" , "signed" , "sizeof" , " static" ,
				"struct" , "union" , "switch" , "typedef" , "flot" , "if" , "else" , "goto" , 
   				"enum" , "unsigned" , "volatile" , "while" , "void" , "for" , "double" , "extern"  
				};
	for(i=0;i<=32;i++)
	{
		if( strcmp(word, keywords[i]) == 0)
		{
			flag=1;
			return flag;	
		}
	}
	return flag;
}


int operator(char o) 
{ 
	int i=0,flag=0;
	char operators[7] = {'+','-','*','/','>','<','='};
	for(i=0;i<=6;i++)
	{
		if(o == operators[i])
		{
			flag=1;
			return flag;
		}
	}
        return flag;
} 

int integer(char a)
{
	int i =0,flag=0;
	char integers[10] = {'0','1','2','3','4','5','6','7','8','9'};
	for(i=0;i<=9;i++)
	{
		if(a == integers[i])
		{
			flag = 1; 
			return flag;
		}
	}
	return flag;
}

int identifier(char str)
{
	int flag=0;
	if( integer(str) == 0)
	{
		flag =1;
		return flag;
	}
	return flag;
}

int delimiter(char d) 
{
	int i=0,flag=0;
	char delimiters[] = {'(',')','{','}','<','>',';','+',',','[',']','=',' ','-','*','/' };
	for(i=0;i<=17;i++)
	{
		if(delimiters[i] == d)
		{flag=1;return flag;}
	} 
	return flag;
}
void parse(char str[])
{
	int j =0,i=strlen(str),c=0,u=0,e=0,y=0;
	
	while(j <= i)
	{
		if(delimiter(str[j]) == 1)
		{
			printf(" %c is a delimeter\n" ,str[j]);
			j=j+1;
			tokens++;
		}
		else
		{
			if(integer(str[j])==0)
			{
				e=0;
				c=j;
				y=c;
				char string[50];
				while(str[j] != ' ')
				{
					string[y]= str[j];
					j=j+1;
					y=y+1;
				}
				if(keyword(string) == 1)
				{
					for(u=c;u<=y;u++)
					printf("%c",string[u]);
						
					printf(" is a keyword\n");
					tokens++;
				}
				else
				{
					for(u=c;u<=y;u++)
					printf("%c",string[u]);
					printf(" is an identifier \n");
					tokens++;
				}
			}
		}
	}
	
}


int  main()
{

	char str[50] = "void main { int a = b + c ; }"; 
    	parse(str); 
	printf("\nNumber of tokens : %d\n", tokens);
}

