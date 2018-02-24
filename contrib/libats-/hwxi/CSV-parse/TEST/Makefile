######
#
# A simple Makefile
#
######

PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt

######

all:: \
test01
test01: \
test01.dats ; \
$(PATSCC) -O2 \
-D_GNU_SOURCE -DATS_MEMALLOC_LIBC -o $@ $<

regress:: test01; ./$<
cleanall:: ; $(RMF) test01

######

RMF=rm -f

######

testall:: all
testall:: regress
testall:: cleanall

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.c
clean:: ; $(RMF) *_?ats.o

######

cleanall:: clean

######
#
export \
PATSHOMELOCS=\
./node_modules:./../node_modules:./../../node_modules
#
###### end of [Makefile] ######
