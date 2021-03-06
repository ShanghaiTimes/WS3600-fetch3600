####### Makefile for open3600 - manually created based on open2300 makefile
#
# # Default locations of config file are 
# 1. Path to config file including filename given as parameter
# 2. ./open3600.conf
# 3. /usr/local/etc/open3600.conf
# 4. /etc/open3600.conf
#
# This makefile is made for Linux.
# For Windows version modify the CC_LDFLAG by adding a -lwsock32
#
# You may want to adjust the 3 directories below

prefix = open3600-0.20
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin

#########################################

CC  = gcc
OBJ = test3600.o rw3600.o linux3600.o win3600.o
LOGOBJ = log3600.o rw3600.o linux3600.o win3600.o
FETCHOBJ = fetch3600.o rw3600.o linux3600.o win3600.o
WUOBJ = wu3600.o rw3600.o linux3600.o win3600.o
CWOBJ = cw3600.o rw3600.o linux3600.o win3600.o
DUMPOBJ = dump3600.o rw3600.o linux3600.o win3600.o
HISTOBJ = history3600.o rw3600.o linux3600.o win3600.o
HISTLOGOBJ = histlog3600.o rw3600.o linux3600.o win3600.o
DUMPBINOBJ = bin3600.o rw3600.o linux3600.o win3600.o
XMLOBJ = xml3600.o rw3600.o linux3600.o win3600.o
PGSQLOBJ = pgsql3600.o rw3600.o linux3600.o win3600.o
LIGHTOBJ = light3600.o rw3600.o linux3600.o win3600.o
INTERVALOBJ = interval3600.o rw3600.o linux3600.o win3600.o
MINMAXOBJ = minmax3600.o rw3600.o linux3600.o win3600.o
TESTOBJ = test3600.o rw3600.o linux3600.o win3600.o

VERSION = 0.20

CFLAGS = -Wall -O3 -DVERSION=$(VERSION)
CC_LDFLAGS = -lm
CC_WINFLAG = 
# For Windows - comment the two line above and un-comment the two lines below.
#CC_LDFLAGS = -lm -lwsock32
#CC_WINFLAG = -mwindows
INSTALL = install

####### Build rules

all: test3600 dump3600 history3600 histlog3600 fetch3600 log3600 mysql3600

test3600 : $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(CC_LDFLAGS)
	
open3600 : $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(CC_LDFLAGS)
	
dump3600 : $(DUMPOBJ)
	$(CC) $(CFLAGS) -o $@ $(DUMPOBJ) $(CC_LDFLAGS)
	
log3600 : $(LOGOBJ)
	$(CC) $(CFLAGS) -o $@ $(LOGOBJ) $(CC_LDFLAGS)
	
fetch3600 : $(FETCHOBJ)
	$(CC) $(CFLAGS) -o $@ $(FETCHOBJ) $(CC_LDFLAGS)

wu3600 : $(WUOBJ)
	$(CC) $(CFLAGS) -o $@ $(WUOBJ) $(CC_LDFLAGS)
	
cw3600 : $(CWOBJ)
	$(CC) $(CFLAGS) -o $@ $(CWOBJ) $(CC_LDFLAGS)

history3600 : $(HISTOBJ)
	$(CC) $(CFLAGS) -o $@ $(HISTOBJ) $(CC_LDFLAGS)
	
histlog3600 : $(HISTLOGOBJ)
	$(CC) $(CFLAGS) -o $@ $(HISTLOGOBJ) $(CC_LDFLAGS)
	
bin3600 : $(DUMPBINOBJ)
	$(CC) $(CFLAGS) -o $@ $(DUMPBINOBJ) $(CC_LDFLAGS)

xml3600 : $(XMLOBJ)
	$(CC) $(CFLAGS) -o $@ $(XMLOBJ) $(CC_LDFLAGS)

mysql3600:
	$(CC) $(CFLAGS) -o mysql3600 mysql3600.c rw3600.c linux3600.c $(CC_LDFLAGS) -I/usr/include/mysql -L/usr/lib/mysql -lmysqlclient

pgsql3600: $(PGSQLOBJ)
	$(CC) $(CFLAGS) -o $@ $(PGSQLOBJ) $(CC_LDFLAGS) $(CC_WINFLAG) -I/usr/include/pgsql -L/usr/lib/pgsql -lpq

light3600: $(LIGHTOBJ)
	$(CC) $(CFLAGS) -o $@ $(LIGHTOBJ) $(CC_LDFLAGS)
	
interval3600: $(INTERVALOBJ)
	$(CC) $(CFLAGS) -o $@ $(INTERVALOBJ) $(CC_LDFLAGS)
	
minmax3600: $(MINMAXOBJ)
	$(CC) $(CFLAGS) -o $@ $(MINMAXOBJ) $(CC_LDFLAGS) $(CC_WINFLAG)

install:
	mkdir -p $(bindir)
	$(INSTALL) open3600 $(bindir)
	$(INSTALL) dump3600 $(bindir)
	$(INSTALL) log3600 $(bindir)
	$(INSTALL) fetch3600 $(bindir)
	$(INSTALL) wu3600 $(bindir)
	$(INSTALL) cw3600 $(bindir)
	$(INSTALL) histlog3600 $(bindir)
	$(INSTALL) xml3600 $(bindir)
	$(INSTALL) light3600 $(bindir)
	$(INSTALL) interval3600 $(bindir)
	$(INSTALL) minmax3600 $(bindir)
	
uninstall:
	rm -f $(bindir)/open3600 $(bindir)/dump3600 $(bindir)/log3600 $(bindir)/fetch3600 $(bindir)/wu3600 $(bindir)/cw3600 $(bindir)/xml3600 $(bindir)/light3600 $(bindir)/interval3600 $(bindir)/minmax3600

clean:
	rm -f *~ *.o open3600 dump3600 log3600 fetch3600 wu3600 cw3600 history3600 histlog3600 bin3600 xml3600 mysql3600 pgsql3600 light3600 interval3600 minmax3600 test3600

cleanexe:
	rm -f *~ *.o open3600.exe dump3600.exe log3600.exe fetch3600.exe wu3600.exe cw3600.exe history3600.exe histlog3600.exe bin3600.exe xml3600.exe mysql3600.exe pgsql3600.exe light3600.exe interval3600.exe minmax3600.exe test3600.exe
