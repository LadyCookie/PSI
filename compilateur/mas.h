#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int ins_add3(char * OP,int A,int B,int C);

int ins_add2(char * OP,int A,int B);

//update le registre A de l'instruction située dans la case indexée num_ins du tableau d'instruction pour que A soit égal à la dernière adresse actuelle du tableau d'instruction
void update_ins(int num_ins);

void print_ins_table(); 

int get_last_addr_ins();
