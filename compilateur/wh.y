%{
	#include <stdlib.h>
	#include <stdio.h>
	#include "cas.h"
	#include "mas.h"
	#define MAX 100

	
	int yylex(void);
	void yyerror(char*);

	enum TYPE type;
	int isConst=0;
	int isInit=0;
	int depth_cur=0;
	


#define OPERATION(OP, R, A, B) \
	do { \
		ins_add2("LOAD", 0, A); \
		ins_add2("LOAD", 1, B); \
		suppress_temp(); \
		ins_add3(OP, 0, 1, -1); \
		ins_add2("STORE", R, 0); \
		R = A; \
	} while (0)

%}

%union{
	int entier;
	char * string;
}

%token tMAIN tACCO tACCF tPRINTF tVAR tCONST tTYPEINT tINT tADD tSUB tMUL tDIV tEQ tPO tPF tCOM tEND tERROR tIF tELSE tWHILE tPE tCO tCF tAND tOR

%type <string> tVAR
%type <entier> tINT tWHILE tIF
%type <entier> operation affectation condition

%right tEQ
%left tADD tSUB
%left tMUL tDIV 
%%

start: tMAIN tPO tPF tACCO instructions tACCF;

instructions:
	  instruction instructions
	| ;

instruction: definitions tEND  
	| 	tVAR 
			{ if(!is_defined($1)){
				printf("ERROR VARIABLE %s NOT DEFINED \n",$1);}
				else{
				init($1);}
			} //Trouver comment arrêter le compilo
		affectation {
					ins_add2("LOAD", 0, $3);
					ins_add2("STORE", get_addr($1), 0);
					suppress_temp();
		}
		tEND
	| print tEND

//ATTENTION A SUPPRIMER LES VARIABLES DE CONDITION
	| tIF tPO condition { ins_add2("LOAD",0,$3); $3=ins_add2("JMPC",-1,0); suppress_temp();} tPF tACCO {depth_cur++;} instructions  { $1=ins_add2("JMP",-1,0);} tACCF {update_ins($3);} else {depth_cur--; update_ins($1);} 


	| tWHILE tPO {$1=get_last_addr_ins();} condition {ins_add2("LOAD",0,$4); $4=ins_add2("JMPC",-1,0); suppress_temp(); } tPF tACCO  {depth_cur++;} instructions tACCF  {depth_cur--; ins_add2("JMP",$1,-1) ;update_ins($4); }  ;

condition: 
	tVAR  { ins_add2("LOAD",0,get_addr($1)); $$=ts_add("temp",tyint, depth_cur,1,1); ins_add2("STORE",$$,0);}
	| tINT { $$=ts_add("temp",tyint,depth_cur,1,1); ins_add2("AFC",0,$1); ins_add2("STORE",$$,0); } 
	| tPE condition { ins_add2("LOAD",0,$2); ins_add2("AFC",1,0); ins_add2("EQU",0,1); ins_add2("STORE",$2,0); $$=$2; } 
	| tPO condition tPF { $$ = $2; }
	| condition tEQ tEQ condition { OPERATION("EQU",$$,$1,$4); }
	| condition tPE tEQ condition { OPERATION("EQU", $$, $1 ,$4); ins_add2("AFC",1,0); ins_add2("EQU",0,1); }
	| condition tCO tEQ condition { OPERATION("INFE", $$, $1,$4);} 
	| condition tCF tEQ condition { OPERATION("SUPE", $$, $1, $4); }
	| condition tCO condition     { OPERATION("INF", $$, $1 ,$3); }
	| condition tCF condition     { OPERATION("SUP", $$, $1 ,$3); }
	| condition tAND condition	{ OPERATION("MUL",$$,$1,$3); ins_add2("AFC",1,0); ins_add2("EQU",0,1);}	  
	| condition tOR condition   { OPERATION("ADD",$$,$1,$3); ins_add2("AFC",1,0); ins_add2("EQU",0,1);};
 
else: tELSE tACCO instructions tACCF 
 |;	

definitions: types noms ;

affectation: tEQ operation { $$ =$2; };

noms: nom
	| nom tCOM noms;

nom: tVAR { 
			ts_add($1,type,depth_cur,0,isConst);
		}
	| tVAR affectation { 
			ts_add($1,type,depth_cur,1,isConst);
		};

types: tCONST type 
	{
		isConst=1;
	} 
	| type
	{
		isConst=0;
	};
type: tTYPEINT 
	{
		type=tyint;
	}
	;

operation: tINT {//ajoute une variable temporaire
					$$ = ts_add("temp",tyint,depth_cur,1,0);
					ins_add2("AFC", 0, $1);
					ins_add2("STORE", $$, 0);
				}
	| tVAR 		{
					//ts_add(ts,"temp",tyINT,depth_cur,is_Init(ts,index_table,$1),index_table)
					$$ = ts_add("temp",tyint,depth_cur,is_Init($1),is_Const($1));
					ins_add2("LOAD", 0, get_addr($1));
					ins_add2("STORE", $$, 0);
				}
	| operation tADD operation { OPERATION("ADD", $$, $1, $3); }
	| operation tSUB operation { OPERATION("SOU", $$, $1, $3); }
	| operation tMUL operation { OPERATION("MUL", $$, $1, $3); }
	| operation tDIV operation { OPERATION("DIV", $$, $1, $3); }
	| tPO operation tPF { $$ = $2; } ;

print: tPRINTF tPO tVAR tPF 
	{if( !is_defined($3) ){
		printf("ERREUR, LA VARIABLE %s N'EST PAS DEFINIE \n",$3);
	} 
	else if( !is_Init($3)){
		printf("ERREUR, LA VARIABLE %s N'EST PAS INITIALISEE \n",$3);
	}
	else{
		print_s($3);
	}
	;
		
	};

%%

int main(void) {
	//yydebug = 1;
	yyparse();
	print_ins_table();
}


