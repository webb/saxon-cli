Saxon CLI: A command-line wrapper for the Saxon HE XSLT processor.

See COPYING for info about the license under which this software is released.

# Installation

If you're directly installing it under a directory:

```
$ ./configure --prefix=${installation root directory}
$ make
$ make install
```

If you're installing it using stow:

```
$ ./configure --prefix=${installation root directory}
$ make
$ make -f stow.mk
```

If you're using a separate build directory:

```
$ mkdir ${build directory}
$ cd ${build directory}
$ ${source directory}/configure --prefix=${installation root directory}
$ make
$ make install
```

# Updating configure

If you want to rebuild configure:

`$ make -f configure.mk`


