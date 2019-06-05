CLAGS=-g

compiler:y.tab.c lex.yy.c cas.c mas.c
	gcc -g -Wall lex.yy.c y.tab.c cas.c mas.c -o compiler -ly -ll

lex.yy.c:trivia.l
	flex trivia.l

y.tab.c:wh.y
	yacc -d -t -v wh.y

test:compiler
	./compiler < test00.c || echo "mince"
	./compiler < test01.c || echo "mince"
	./compiler < test02.c | grep '^#' | sed 's/^#//' > test02.s || echo "mince"
clean:
	rm y.tab.c y.tab.h lex.yy.c
