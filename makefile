CC = gcc

CFLAGS = -std=c99 -g
LDFLAGS =  -lpthread -ldl
ODIR = bin
PROG = a.out

all: main.o sqlite3.o
	$(CC) $(LDFLAGS) $(ODIR)/*.o -o $(ODIR)/$(PROG)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o $(ODIR)/main.o

sqlite3.o: sqlite3/sqlite3.c sqlite3/sqlite3.h
	$(CC) $(CFLAGS) -c sqlite3/sqlite3.c -o $(ODIR)/sqlite3.o


clean:
	rm -f $(ODIR)/$(PROG) $(ODIR)/*.o