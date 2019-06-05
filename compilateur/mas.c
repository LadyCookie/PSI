#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mas.h"

#define Max_instruct 200
#define MAXNAME 5

struct cel{
		char * OP;
		int A;
		int B;
		int C;
	};

struct cel ins_tab[Max_instruct];
int index_ins=0;


int ins_add3(char * OP,int A,int B,int C){
	struct cel add;
	add.OP = strdup(OP);
	add.A=A;
	add.B=B;
	add.C=C;
	ins_tab[index_ins] = add;
	return(index_ins++);
};

int ins_add2(char * OP,int A,int B){
	struct cel add;
	add.OP = strdup(OP);
	add.A=A;
	add.B=B;
	add.C=0;
	ins_tab[index_ins] = add;
	return(index_ins++);
};


void update_ins(int num_ins){
	ins_tab[num_ins].A=index_ins;
};


void print_ins_table(){
	int i;
	struct cel temp;
	int OP_Code;

	FILE * fdp = fopen("out.asm","w+");

	for(i=0;i<index_ins;i++){
		temp=ins_tab[i];
		printf("#%s	%02d	%02d	%02d \n",temp.OP,temp.A,temp.B,temp.C);

		if(!strcmp(ins_tab[i].OP,"AFC")){
				OP_Code=1;
		}else if(!strcmp(ins_tab[i].OP,"STORE")){
				OP_Code=2;
		}else if(!strcmp(ins_tab[i].OP,"LOAD")){
				OP_Code=3;
		}else if(!strcmp(ins_tab[i].OP,"COP")){
				OP_Code=4;
		}else if(!strcmp(ins_tab[i].OP,"ADD")){
				OP_Code=5;
		}else if(!strcmp(ins_tab[i].OP,"MUL")){
				OP_Code=6;
		}else if(!strcmp(ins_tab[i].OP,"SOU")){
				OP_Code=7;
		}else if(!strcmp(ins_tab[i].OP,"DIV")){
				OP_Code=8;
		}else if(!strcmp(ins_tab[i].OP,"EQU")){
				OP_Code=9;
		}else if(!strcmp(ins_tab[i].OP,"INF")){
				OP_Code=10;
		}else if(!strcmp(ins_tab[i].OP,"SUP")){
				OP_Code=11;
		}else if(!strcmp(ins_tab[i].OP,"INFE")){
				OP_Code=12;
		}else if(!strcmp(ins_tab[i].OP,"SUPE")){
				OP_Code=13;
		}else if(!strcmp(ins_tab[i].OP,"JMP")){
				OP_Code=14;
		}else if(!strcmp(ins_tab[i].OP,"JMPC")){
				OP_Code=15;
		}else{
				OP_Code=0;
		}
		//fprintf(fdp,"%hhX%04hhX%04hhX%04hhX\n", OP_Code, temp.A, temp.B , temp.C); dans le cas d'une architecture à 3 registres
		fprintf(fdp,"%hhX%04hhX%04hhX\n", OP_Code, temp.A, temp.B );
	}

	fclose(fdp);
}; 


int get_last_addr_ins(){
	return index_ins;
};
