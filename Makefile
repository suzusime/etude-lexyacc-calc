all: exe

exe: flex
	gcc calc.tab.c lex.yy.c -lfl -ly -o calc

flex: bison
	flex calc.l

bison:
	bison -d calc.y

clean:
	rm calc.tab.h calc.tab.c lex.yy.c calc
