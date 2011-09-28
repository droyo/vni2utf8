CC=gcc
LD=gcc

CFLAGS =-I/usr/local/include
LDFLAGS =-L/usr/local/lib -lbio -lfmt -lutf

#	cc -o vni2utf8 -L/usr/local/lib -I/usr/local/include vni2utf8.c -lbio -lfmt -lutf

all: vni2utf8
vni2utf8: $@.o
	$(LD)  -o $@ $> $(LDFLAGS)

.c.o: 
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o vni2utf8
