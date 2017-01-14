#
# A simple Makefile
#
######

NPM=npm

######

CPF=cp -f
MVF=mv -f
RMF=rm -f

######

MAKE=make

######

all::

######
#
atscc2js:: ; \
$(NPM) install atsccomp-atscc2js
#
atscc2js:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2js all \
  && $(MVF) node_modules/atsccomp-atscc2js/atscc2js ./bin
#
######
#
atscc2py3:: ; \
$(NPM) install atsccomp-atscc2py3
#
atscc2py3:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2py3 all \
  && $(MVF) node_modules/atsccomp-atscc2py3/atscc2py3 ./bin
#
######

###### end of [Makefile] ######
