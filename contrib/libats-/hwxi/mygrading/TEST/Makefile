#
# A simple Makefile
#

######

PATSCC=$(PATSHOME)/bin/patscc
PATSOPT=$(PATSHOME)/bin/patsopt

######
#
export \
PATSHOMELOCS=\
./node_modules:./../../node_modules
#
######

all:: \
test01
test01: \
test01.dats ; \
$(PATSCC) -O2 \
-D_GNU_SOURCE -DATS_MEMALLOC_LIBC -o $@ $< testlib.dats
cleanall:: ; $(RMF) test01

######

all:: \
test02
test02: \
test02.dats ; \
$(PATSCC) -O2 \
-D_GNU_SOURCE -DATS_MEMALLOC_LIBC -o $@ $< testlib.dats -latslib
cleanall:: ; $(RMF) test02

######

RMF=rm -f

######

testall:: all
#
#testall:: regress
#
testall:: cleanall

######

clean:: ; $(RMF) *~
clean:: ; $(RMF) *_?ats.c
clean:: ; $(RMF) *_?ats.o

######

cleanall:: clean

###### end of [Makefile] ######
