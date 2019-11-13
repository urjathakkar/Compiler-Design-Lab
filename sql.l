%{
#include"y.tab.h"
%}
%%
"select"|"insert"|"update"|"delete" {return KEY;}
" " {}
"*" {return AS;}
"from"|"where" {return KEYWORDS;}
"and"|"or" {return LO;}
";" {return SC;}
[a-z]+ {return VARIABLE;}
[0-9]+ {return NUMBER;}
">"|"<"|">="|"<="|"="|"!=" {return OPERATOR;}
%%
