#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([saxon-cli], [0.1], [wr@gatech.edu])
AC_COPYRIGHT
# AC_PREFIX_DEFAULT($HOME)
# AM_INIT_AUTOMAKE([-Wall -Werror gnu])

# Checks for programs.
AC_PROG_INSTALL
AC_CONFIG_SRCDIR
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PATH_PROG(bash,bash)
test "$bash" = "" && AC_MSG_ERROR([bash not found])
AC_PATH_PROG(gradle,gradle,gradle)
test "$gradle" = "" && AC_MSG_ERROR([gradle not found])
AC_PATH_PROGS(sed,gsed sed,sed)
test "$sed" = "" && AC_MSG_ERROR([sed not found])
AC_PATH_PROGS(m4,gm4 m4,m4)
test "$m4" = "" && AC_MSG_ERROR([m4 not found])
AC_PATH_PROGS(stow,stow,stow)


# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile], [chmod 444 Makefile])
AC_CONFIG_FILES([stow.mk], [chmod 444 stow.mk])
AC_OUTPUT
