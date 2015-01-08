m4_include([config/acx_cblas.m4])
m4_include([config/acx_pthread.m4])
m4_include([config/ax_boost_base.m4])
m4_include([config/ax_boost_date_time.m4])
m4_include([config/ax_boost_program_options.m4])
m4_include([config/ax_boost_thread.m4])
m4_include([config/cppunit.m4])
m4_include([config/gr_check_createfilemapping.m4])
m4_include([config/gr_check_memalign.m4])
m4_include([config/gr_check_shm_open.m4])
m4_include([config/gr_doxygen.m4])
m4_include([config/gr_git.m4])
m4_include([config/gr_gprof.m4])
m4_include([config/gr_lib64.m4])
m4_include([config/gr_libgnuradio_core_extra_ldflags.m4])
m4_include([config/gr_no_undefined.m4])
m4_include([config/gr_pwin32.m4])
m4_include([config/gr_python.m4])
m4_include([config/gr_qwt.m4])
m4_include([config/gr_qwtplot3d.m4])
m4_include([config/gr_scripting.m4])
m4_include([config/gr_set_md_cpu.m4])
m4_include([config/gr_swig.m4])
m4_include([config/gr_sysv_shm.m4])
m4_include([config/gr_version.m4])
m4_include([config/grc_build.m4])
m4_include([config/grc_docs.m4])
m4_include([config/grc_gcell.m4])
m4_include([config/grc_gnuradio_core.m4])
m4_include([config/grc_gnuradio_examples.m4])
m4_include([config/grc_gr_atsc.m4])
m4_include([config/grc_gr_audio_alsa.m4])
m4_include([config/grc_gr_audio_jack.m4])
m4_include([config/grc_gr_audio_oss.m4])
m4_include([config/grc_gr_audio_osx.m4])
m4_include([config/grc_gr_audio_portaudio.m4])
m4_include([config/grc_gr_audio_windows.m4])
m4_include([config/grc_gr_comedi.m4])
m4_include([config/grc_gr_cvsd_vocoder.m4])
m4_include([config/grc_gr_gcell.m4])
m4_include([config/grc_gr_gpio.m4])
m4_include([config/grc_gr_gsm_fr_vocoder.m4])
m4_include([config/grc_gr_msdd6000.m4])
m4_include([config/grc_gr_noaa.m4])
m4_include([config/grc_gr_pager.m4])
m4_include([config/grc_gr_qtgui.m4])
m4_include([config/grc_gr_radar_mono.m4])
m4_include([config/grc_gr_radio_astronomy.m4])
m4_include([config/grc_gr_sounder.m4])
m4_include([config/grc_gr_trellis.m4])
m4_include([config/grc_gr_usrp.m4])
m4_include([config/grc_gr_usrp2.m4])
m4_include([config/grc_gr_utils.m4])
m4_include([config/grc_gr_video_sdl.m4])
m4_include([config/grc_gr_wxgui.m4])
m4_include([config/grc_grc.m4])
m4_include([config/grc_gruel.m4])
m4_include([config/grc_usrp.m4])
m4_include([config/grc_usrp2.m4])
m4_include([config/lf_cc.m4])
m4_include([config/lf_cxx.m4])
m4_include([config/lf_warnings.m4])
m4_include([config/macosx_audiounit.m4])
m4_include([config/mkstemp.m4])
m4_include([config/onceonly.m4])
m4_include([config/pkg.m4])
m4_include([config/sdl.m4])
m4_include([config/usrp_fusb_tech.m4])
m4_include([config/usrp_libusb.m4])
m4_include([config/usrp_sdcc.m4])

# AM_PATH_PYTHON([MINIMUM-VERSION], [ACTION-IF-FOUND], [ACTION-IF-NOT-FOUND])
# ---------------------------------------------------------------------------
# Adds support for distributing Python modules and packages.  To
# install modules, copy them to $(pythondir), using the python_PYTHON
# automake variable.  To install a package with the same name as the
# automake package, install to $(pkgpythondir), or use the
# pkgpython_PYTHON automake variable.
#
# The variables $(pyexecdir) and $(pkgpyexecdir) are provided as
# locations to install python extension modules (shared libraries).
# Another macro is required to find the appropriate flags to compile
# extension modules.
#
# If your package is configured with a different prefix to python,
# users will have to add the install directory to the PYTHONPATH
# environment variable, or create a .pth file (see the python
# documentation for details).
#
# If the MINIMUM-VERSION argument is passed, AM_PATH_PYTHON will
# cause an error if the version of python installed on the system
# doesn't meet the requirement.  MINIMUM-VERSION should consist of
# numbers and dots only.
AC_DEFUN([AM_PATH_PYTHON],
 [
  dnl Find a Python interpreter.  Python versions prior to 2.0 are not
  dnl supported. (2.0 was released on October 16, 2000).
  m4_define_default([_AM_PYTHON_INTERPRETER_LIST],
                    [python python2 python3 python3.0 python2.5 python2.4 python2.3 python2.2 dnl
python2.1 python2.0])

  m4_if([$1],[],[
    dnl No version check is needed.
    # Find any Python interpreter.
    if test -z "$PYTHON"; then
      AC_PATH_PROGS([PYTHON], _AM_PYTHON_INTERPRETER_LIST, :)
    fi
    am_display_PYTHON=python
  ], [
    dnl A version check is needed.
    if test -n "$PYTHON"; then
      # If the user set $PYTHON, use it and don't search something else.
      AC_MSG_CHECKING([whether $PYTHON version >= $1])
      AM_PYTHON_CHECK_VERSION([$PYTHON], [$1],
			      [AC_MSG_RESULT(yes)],
			      [AC_MSG_ERROR(too old)])
      am_display_PYTHON=$PYTHON
    else
      # Otherwise, try each interpreter until we find one that satisfies
      # VERSION.
      AC_CACHE_CHECK([for a Python interpreter with version >= $1],
	[am_cv_pathless_PYTHON],[
	for am_cv_pathless_PYTHON in _AM_PYTHON_INTERPRETER_LIST none; do
	  test "$am_cv_pathless_PYTHON" = none && break
	  AM_PYTHON_CHECK_VERSION([$am_cv_pathless_PYTHON], [$1], [break])
	done])
      # Set $PYTHON to the absolute path of $am_cv_pathless_PYTHON.
      if test "$am_cv_pathless_PYTHON" = none; then
	PYTHON=:
      else
        AC_PATH_PROG([PYTHON], [$am_cv_pathless_PYTHON])
      fi
      am_display_PYTHON=$am_cv_pathless_PYTHON
    fi
  ])

  if test "$PYTHON" = :; then
  dnl Run any user-specified action, or abort.
    m4_default([$3], [AC_MSG_ERROR([no suitable Python interpreter found])])
  else

  dnl Query Python for its version number.  Getting [:3] seems to be
  dnl the best way to do this; it's what "site.py" does in the standard
  dnl library.

  AC_CACHE_CHECK([for $am_display_PYTHON version], [am_cv_python_version],
    [am_cv_python_version=`$PYTHON -c "import sys; sys.stdout.write(sys.version[[:3]])"`])
  AC_SUBST([PYTHON_VERSION], [$am_cv_python_version])

  dnl Use the values of $prefix and $exec_prefix for the corresponding
  dnl values of PYTHON_PREFIX and PYTHON_EXEC_PREFIX.  These are made
  dnl distinct variables so they can be overridden if need be.  However,
  dnl general consensus is that you shouldn't need this ability.

  AC_SUBST([PYTHON_PREFIX], ['${prefix}'])
  AC_SUBST([PYTHON_EXEC_PREFIX], ['${exec_prefix}'])

  dnl At times (like when building shared libraries) you may want
  dnl to know which OS platform Python thinks this is.

  AC_CACHE_CHECK([for $am_display_PYTHON platform], [am_cv_python_platform],
    [am_cv_python_platform=`$PYTHON -c "import sys; sys.stdout.write(sys.platform)"`])
  AC_SUBST([PYTHON_PLATFORM], [$am_cv_python_platform])


  dnl Set up 4 directories:

  dnl pythondir -- where to install python scripts.  This is the
  dnl   site-packages directory, not the python standard library
  dnl   directory like in previous automake betas.  This behavior
  dnl   is more consistent with lispdir.m4 for example.
  dnl Query distutils for this directory.  distutils does not exist in
  dnl Python 1.5, so we fall back to the hardcoded directory if it
  dnl doesn't work.
  AC_CACHE_CHECK([for $am_display_PYTHON script directory],
    [am_cv_python_pythondir],
    [if test "x$prefix" = xNONE
     then
       am_py_prefix=$ac_default_prefix
     else
       am_py_prefix=$prefix
     fi
     am_cv_python_pythondir=`$PYTHON -c "import sys; from distutils import sysconfig; sys.stdout.write(sysconfig.get_python_lib(0,0,prefix='$am_py_prefix'))" 2>/dev/null ||
     echo "$PYTHON_PREFIX/lib/python$PYTHON_VERSION/site-packages"`
     case $am_cv_python_pythondir in
     $am_py_prefix*)
       am__strip_prefix=`echo "$am_py_prefix" | sed 's|.|.|g'`
       am_cv_python_pythondir=`echo "$am_cv_python_pythondir" | sed "s,^$am__strip_prefix,$PYTHON_PREFIX,"`
       ;;
     *)
       case $am_py_prefix in
         /usr|/System*) ;;
         *)
	  am_cv_python_pythondir=$PYTHON_PREFIX/lib/python$PYTHON_VERSION/site-packages
	  ;;
       esac
       ;;
     esac
    ])
  AC_SUBST([pythondir], [$am_cv_python_pythondir])

  dnl pkgpythondir -- $PACKAGE directory under pythondir.  Was
  dnl   PYTHON_SITE_PACKAGE in previous betas, but this naming is
  dnl   more consistent with the rest of automake.

  AC_SUBST([pkgpythondir], [\${pythondir}/$PACKAGE])

  dnl pyexecdir -- directory for installing python extension modules
  dnl   (shared libraries)
  dnl Query distutils for this directory.  distutils does not exist in
  dnl Python 1.5, so we fall back to the hardcoded directory if it
  dnl doesn't work.
  AC_CACHE_CHECK([for $am_display_PYTHON extension module directory],
    [am_cv_python_pyexecdir],
    [if test "x$exec_prefix" = xNONE
     then
       am_py_exec_prefix=$am_py_prefix
     else
       am_py_exec_prefix=$exec_prefix
     fi
     am_cv_python_pyexecdir=`$PYTHON -c "import sys; from distutils import sysconfig; sys.stdout.write(sysconfig.get_python_lib(1,0,prefix='$am_py_exec_prefix'))" 2>/dev/null ||
     echo "$PYTHON_EXEC_PREFIX/lib/python$PYTHON_VERSION/site-packages"`
     case $am_cv_python_pyexecdir in
     $am_py_exec_prefix*)
       am__strip_prefix=`echo "$am_py_exec_prefix" | sed 's|.|.|g'`
       am_cv_python_pyexecdir=`echo "$am_cv_python_pyexecdir" | sed "s,^$am__strip_prefix,$PYTHON_EXEC_PREFIX,"`
       ;;
     *)
       case $am_py_exec_prefix in
         /usr|/System*) ;;
         *)
	   am_cv_python_pyexecdir=$PYTHON_EXEC_PREFIX/lib/python$PYTHON_VERSION/site-packages
	   ;;
       esac
       ;;
     esac
    ])
  AC_SUBST([pyexecdir], [$am_cv_python_pyexecdir])

  dnl pkgpyexecdir -- $(pyexecdir)/$(PACKAGE)

  AC_SUBST([pkgpyexecdir], [\${pyexecdir}/$PACKAGE])

  dnl Run any user-specified action.
  $2
  fi

])

