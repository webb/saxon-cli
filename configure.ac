#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([Saxon-CLI],[0],[https://github.com/webb/saxon-cli/issues],[saxon-cli],[https://github.com/webb/saxon-cli])
AC_CONFIG_SRCDIR([Makefile.in])
AC_COPYRIGHT

if test "x$prefix" = "xNONE"
then AC_MSG_ERROR([\$prefix is unset. Set with --prefix=\${install root directory}])
fi

# Checks for programs.
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PROG_SED

AC_PATH_PROG(bash,bash)
test "x$bash" = "x" && AC_MSG_ERROR([bash not found])

AC_PATH_PROGS(find,gfind find)
test "x$find" = "x" && AC_MSG_ERROR([find not found])

AC_PATH_PROG(gradle,gradle)
test "x$gradle" = "x" && AC_MSG_ERROR([gradle not found])

AC_PATH_PROGS(realpath,grealpath realpath)
test "x$realpath" = "x" && AC_MSG_ERROR([realpath not found])

AC_CHECK_FILE([$prefix/share/wrtools-core/opt_help.bash],,[AC_MSG_ERROR(package wrtools-core not found)])

AC_CONFIG_FILES([Makefile], [chmod 444 Makefile])
AC_CONFIG_FILES([stow.mk], [chmod 444 stow.mk])
AC_OUTPUT
