#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([saxon-cli], [0.1], [wr@gatech.edu])
AC_COPYRIGHT
AC_CONFIG_SRCDIR

# Checks for programs.
AC_PROG_INSTALL
AC_PROG_MKDIR_P
AC_PROG_SED

dnl WR_check_prog( $command-name )
dnl   e.g., WR_check_prog(bash) will set @bash@
AC_DEFUN([WR_check_prog],[AC_PATH_PROG($1,$1)
  test "x$[]$1" = "x" && AC_MSG_ERROR([$1 not found])])dnl

dnl WR_check_prog_options( $command-short-name, $command-name-options ... )
dnl   e.g., WR_check_prog_options(cat, gcat cat) will set @cat@
AC_DEFUN([WR_check_prog_options],[AC_PATH_PROG($1,$2)
  test "x$[]$1" = "x" && AC_MSG_ERROR([$1 not found])])dnl

WR_check_prog(bash)
WR_check_prog(gradle)
WR_check_prog(java)
WR_check_prog_options(m4,gm4 m4)

WR_check_prog_options(tokenize_strings, tokenize-strings)

AC_PATH_PROGS(stow,stow,stow)

# check for local files

WR_expand () {
  local before=$1
  eval local after="$1"
  if [[ $before = $after ]]
  then printf "%s" "$before"
  else WR_expand "$after"
  fi
}

dnl WR_check_file( $variable-name, $file-path )
AC_DEFUN([WR_check_file],[$1=$(WR_expand "$2")
  AC_CHECK_FILE([$[]$1],
    AC_SUBST([$1],[$[]$1]),
    AC_MSG_ERROR([not found: $[]$1]))])dnl

WR_check_file(CONFIG_COMMON_BASH, $datadir/bash/common.bash)
WR_check_file(CONFIG_OPT_HELP_BASH, $datadir/bash/opt_help.bash)
WR_check_file(CONFIG_OPT_VERBOSE_BASH, $datadir/bash/opt_verbose.bash)
WR_check_file(CONFIG_FAIL_BASH, $datadir/bash/fail.bash)
WR_check_file(CONFIG_TEMP_BASH, $datadir/bash/temp.bash)

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile], [chmod 444 Makefile])
AC_CONFIG_FILES([stow.mk], [chmod 444 stow.mk])
AC_OUTPUT
