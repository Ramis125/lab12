#
# Makefile
#

CC = gcc
CFLAGS =
LIBS = -lm

calcul: clean calculate.o main.o
        gcc -g -Wall -o calcul main.o calculate.o $(LIBS)
        
calculate.o: calculate.c calculate.h
        gcc -c -g -Wall calculate.c $(CFLAGS)
        
main.o: main.c calculate.h
        gcc -c -g -Wall main.c $(CFLAGS)
        
clean:
        -rm calcul *.o 
        
# End Makefile                                
