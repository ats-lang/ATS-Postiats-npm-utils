######
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

ats-extsolve:: ; $(NPM) install $@

######

catsparsemit:: ; $(NPM) install $@

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
#
atscc2scm:: ; \
$(NPM) install atsccomp-atscc2scm
#
atscc2scm:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2scm all \
  && $(MVF) node_modules/atsccomp-atscc2scm/atscc2scm ./bin
#
######
#
atscc2clj:: ; \
$(NPM) install atsccomp-atscc2clj
#
atscc2clj:: ; \
$(MAKE) -C node_modules/atsccomp-atscc2clj all \
  && $(MVF) node_modules/atsccomp-atscc2clj/atscc2clj ./bin
#
######
#
patsolve_z3:: ; \
$(NPM) install ats-extsolve-z3
#
patsolve_z3:: ; \
$(MAKE) -C node_modules/ats-extsolve-z3 all \
  && $(MVF) node_modules/ats-extsolve-z3/patsolve_z3 ./bin
#
######
#
patsolve_smt2:: ; \
$(NPM) install ats-extsolve-smt2
#
patsolve_smt2:: ; \
$(MAKE) -C node_modules/ats-extsolve-smt2 all \
  && $(MVF) node_modules/ats-extsolve-smt2/patsolve_smt2 ./bin
#
######

patsopt-nodejs:: ; $(NPM) install $@

######

ats-postiats-include:: ; $(NPM) install $@

######

###### end of [Makefile] ######
