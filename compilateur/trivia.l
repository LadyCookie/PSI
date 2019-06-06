%{
	#include "y.tab.h"
%}

%%

"main" { return tMAIN; }

"if" { return tIF; }
"else" { return tELSE; }
"while" { return tWHILE; }

"{" { return tACCO; }
"}" { return tACCF; }

"printf" { return tPRINTF; }


"int" { return tTYPEINT; }
"const" { return tCONST; }

"+" { return tADD; }
"-" { return tSUB; }
"*" { return tMUL; }
"/" { return tDIV; }
"=" { return tEQ; }
"(" { return tPO; }
")" { return tPF; }
"!" { return tPE; }
"<" { return tCO; }
">" { return tCF; }
"&&" { return tAND;}
"||" { return tOR; }

[\t \n] {}

"," { return tCOM; }
";" { return tEND; }

[a-zA-Z][a-zA-Z0-9_]* {
		yylval.string = strdup(yytext); // ERROR !!!!
		return tVAR;
	}
[0-9]+ {
		yylval.entier = atoi(yytext);
		return tINT;
	}

.  { return tERROR; }

