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
#
atscc2php:: ; \
$(NPM) install atsccomp-atscc2php
#
atscc2php:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2php all \
  && $(MVF) node_modules/atsccomp-atscc2php/atscc2php ./bin
#
######
#
atscc2pl:: ; \
$(NPM) install atsccomp-atscc2pl
#
atscc2pl:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2pl all \
  && $(MVF) node_modules/atsccomp-atscc2pl/atscc2pl ./bin
#
######
#
atscc2erl:: ; \
$(NPM) install atsccomp-atscc2erl
#
atscc2erl:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2erl all \
  && $(MVF) node_modules/atsccomp-atscc2erl/atscc2erl ./bin
#
######

###### end of [Makefile] ######
