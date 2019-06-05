#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NAME 100

enum TYPE {tyint};

struct cellule{
		char name[MAX_NAME]; 
		enum TYPE type; 
		int profondeur;
		int addr;
		int init;
		int isConst;
};

int ts_add(char * name, enum TYPE type, int profondeur, int init, int isConst);

int is_defined(char * name);

int is_Init(char * name);

int is_Const(char * name);

int get_addr(char * name);

void init(char * name);

void print_s(char * name);

void print_table();

void suppress_temp();
