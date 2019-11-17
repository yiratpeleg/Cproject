CC=gcc
FLAGS= -Wall

all:mymathd mymaths mains maind

libmyMath.a:basicMath.o power.o myMath.h
	ar rcs libmyMath.a basicMath.o power.o myMath.h

basicMath.o:basicMath.c myMath.h
	$(CC) -c basicMath.c

power.o:power.c myMath.h
	$(CC) -c power.c

libmyMath.so:basicMath.o power.o myMath.h 
	$(CC) -shared -o libmyMath.so -fPIC basicMath.o power.o myMath.h

mains:libmyMath.a main.o myMath.h
	$(CC) $(FLAGS) -o mains main.o libmyMath.a myMath.h

maind:libmyMath.so main.o myMath.h
	$(CC) $(FLAGS) -o maind main.o ./libmyMath.a

mymaths:libmyMath.a

mymathd:libmyMath.so

main.o:main.c myMath.h
	$(CC) -c main.c

clean:
	rm -f *.o *.so *.a maind mains