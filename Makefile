a: a.tab.c lex.yy.c
	gcc -o $@ $^

a.tab.c: a.y
	bison -d a.y	

lex.yy.c:
	flex a.l


clean:
	rm -f a.tab.h a.tab.c lex.yy.c a


