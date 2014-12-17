
build:
	gradle out

clean:
	$(RM) -r .gradle share
	find . -type f -name '*~' -delete
