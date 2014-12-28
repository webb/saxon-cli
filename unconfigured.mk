
default:
	@ echo No default target. Targets:
	@ echo " " zero: remove everything that can be generated

zero:
	$(RM) -r .gradle autom4te.cache
	$(RM) Makefile autm4te.cache autoscan.log config.log configure share
	$(RM) config.guess config.sub config.status install-sh ltmain.sh
	$(RM) depcomp missing aclocal.m4 
	find . -type f -name '*~' -delete

init:
	autoreconf --install --verbose
