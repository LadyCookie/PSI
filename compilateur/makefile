CLAGS=-g

compiler:y.tab.c lex.yy.c cas.c mas.c
	gcc -g -Wall lex.yy.c y.tab.c cas.c mas.c -o compiler -ly -ll

lex.yy.c:trivia.l
	flex trivia.l

y.tab.c:wh.y
	yacc -d -t -v wh.y

test:compiler
	./compiler < finaltest.c | grep '^#' | sed 's/^#//' > finaltest.s || echo "mince"
clean:
	rm y.tab.c y.tab.h lex.yy.c
