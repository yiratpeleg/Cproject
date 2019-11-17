CC=gcc
FLAGS= -Wall

all:mymathd mymaths mains maind

mymaths:basicMath.o power.o myMath.h
	ar rcs libmyMath.a basicMath.o power.o myMath.h

basicMath.o:basicMath.c myMath.h
	$(CC) -c basicMath.c

power.o:power.c myMath.h
	$(CC) -c power.c

mymathd:basicMath.o power.o myMath.h mymaths
	$(CC) -shared -o libmyMath.so -fPIC basicMath.o power.o myMath.h

mains:mymaths main.o myMath.h
	$(CC) $(FLAGS) -o mains main.o libmyMath.a myMath.h

maind:mymathd main.o myMath.h
	$(CC) $(FLAGS) -o maind main.o ./libmyMath.a

main.o:main.c myMath.h
	$(CC) -c main.c

clean:
	rm -f *.o *.so *.a maind mains