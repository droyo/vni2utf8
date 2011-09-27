all: vni2utf8

vni2utf8: vni2utf8.c
	cc -o vni2utf8 -L/usr/local/lib -I/usr/local/include vni2utf8.c -lbio -lfmt -lutf
