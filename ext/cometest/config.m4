dnl $Id$
dnl config.m4 for extension cometest

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(cometest, for cometest support,
dnl Make sure that the comment is aligned:
dnl [  --with-cometest             Include cometest support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(cometest, whether to enable cometest support,
Make sure that the comment is aligned:
[  --enable-cometest           Enable cometest support])

if test "$PHP_COMETEST" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-cometest -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/cometest.h"  # you most likely want to change this
  dnl if test -r $PHP_COMETEST/$SEARCH_FOR; then # path given as parameter
  dnl   COMETEST_DIR=$PHP_COMETEST
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for cometest files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       COMETEST_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$COMETEST_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the cometest distribution])
  dnl fi

  dnl # --with-cometest -> add include path
  dnl PHP_ADD_INCLUDE($COMETEST_DIR/include)

  dnl # --with-cometest -> check for lib and symbol presence
  dnl LIBNAME=cometest # you may want to change this
  dnl LIBSYMBOL=cometest # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $COMETEST_DIR/lib, COMETEST_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_COMETESTLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong cometest lib version or lib not found])
  dnl ],[
  dnl   -L$COMETEST_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(COMETEST_SHARED_LIBADD)

  PHP_NEW_EXTENSION(cometest, cometest.c, $ext_shared)
fi


if test -z "$PHP_DEBUG"; then
        AC_ARG_ENABLE(debug,
                [--enable-debg  compile with debugging system],
                [PHP_DEBUG=$enableval], [PHP_DEBUG=no]
        )
fi
