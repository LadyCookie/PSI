#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cas.h"

#define MAX 100


struct cellule ts[MAX];
int index_var = 0;

int last_addr=0;



int ts_add(char * name, enum TYPE type, int profondeur, int init, int isConst){

	//piste d'amélioration, traiter ts[index_var] directement plutôt que de créer une variable temporaire cel. plus efficace en mémoire

	struct cellule cel;
	strncpy(cel.name,name,MAX_NAME);	
	cel.type=type;
	cel.profondeur=profondeur;
	cel.init=init;
	cel.isConst=isConst;
	cel.addr=last_addr;

	ts[index_var]=cel;
	if (type == tyint) {
		last_addr += 4;
	} else {
		printf("type error\n");
	}
	index_var++;
	return cel.addr;
}


int is_defined(char * name){ 
	int result=0;	
	int i=0;
	while(!result && i<index_var){
		result=strcmp(ts[i].name,name)==0; 
		i++;
	}
	return result;
}


int is_Init(char * name){ 
	int trouve=0;
	int result=0;	
	int i=0;
	while(!trouve && i<index_var){
		trouve=strcmp(ts[i].name,name)==0; 
		if(trouve){
			result=ts[i].init;
		}		
		else{
			i++;
		}
	}
	return result;
}

int get_addr(char * name){ 
	int trouve=0;
	int result=0;	
	int i=0;
	while(!trouve && i<index_var){
		trouve=strcmp(ts[i].name,name)==0; 
		if(trouve){
			result=ts[i].addr;
		}		
		else{
			i++;
		}
	}
	return result;
}

int is_Const(char * name){ 
	int trouve=0;
	int result=0;	
	int i=0;
	while(!trouve && i<index_var){
		trouve=strcmp(ts[i].name,name)==0; 
		if(trouve){
			result=ts[i].isConst;
		}		
		else{
			i++;
		}
	}
	return result;
}

void init(char * name){ 
	int trouve=0;	
	int i=0;
	while(!trouve && i<index_var){
		trouve=strcmp(ts[i].name,name)==0; 
		if(trouve){
			ts[i].init=1;
		}		
		else{
			i++;
		}
	}
}

void print_s(char * name){
	int trouve=0;	
	int i=0;
	while(!trouve && i<index_var){
		trouve=strcmp(ts[i].name,name)==0; 
		if(trouve){
		printf("%d\n",ts[i].addr);
		}
		i++;
	}
}

void print_table(){
	int i;
	for(i=0;i<index_var;i++){
		struct cellule cel=ts[i];
		printf("name = %s , type = %d , profondeur = %d , init = %d, isConst = %d \n",cel.name,cel.type,cel.profondeur,cel.init,cel.isConst);	
	}
}

void suppress_temp(){
	index_var--;
}
