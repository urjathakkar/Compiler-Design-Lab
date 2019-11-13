%{
#include"y.tab.h"
%}
%%
"while"  {return KEY;}
" " {}
"(" {return OB;}
")" {return CB;}
"{" {return OC;}
"}" {return CC;}
";" {return SC;}
"&&"|"||" {return LO;}
"int"|"char"|"float" {return KEYWORDS;}
[a-z]+ {return VARIABLE;}
[0-9]+ {return NUMBER;}
">"|"<"|">="|"<="|"="|"!=" {return OPERATOR;}
%%
