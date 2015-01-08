# Makefile.in generated by automake 1.10.1 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



#
# Copyright 2001,2006,2008,2009,2010 Free Software Foundation, Inc.
# 
# This file is part of GNU Radio
# 
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

# -*- Makefile -*-
#
# Copyright 2004,2006,2007,2008,2009,2010 Free Software Foundation, Inc.
# 
# This file is part of GNU Radio
# 
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

pkgdatadir = $(datadir)/passive_radar
pkglibdir = $(libdir)/passive_radar
pkgincludedir = $(includedir)/passive_radar
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = i686-pc-linux-gnu
host_triplet = i686-pc-linux-gnu
DIST_COMMON = README $(am__configure_deps) $(srcdir)/Makefile.am \
	$(srcdir)/Makefile.in $(srcdir)/config.h.in \
	$(top_srcdir)/Makefile.common $(top_srcdir)/configure AUTHORS \
	COPYING ChangeLog INSTALL NEWS config.guess config.sub depcomp \
	install-sh ltmain.sh missing py-compile
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/acinclude.m4 \
	$(top_srcdir)/config/acx_cblas.m4 \
	$(top_srcdir)/config/acx_pthread.m4 \
	$(top_srcdir)/config/ax_boost_base.m4 \
	$(top_srcdir)/config/ax_boost_date_time.m4 \
	$(top_srcdir)/config/ax_boost_program_options.m4 \
	$(top_srcdir)/config/ax_boost_thread.m4 \
	$(top_srcdir)/config/cppunit.m4 \
	$(top_srcdir)/config/gr_check_createfilemapping.m4 \
	$(top_srcdir)/config/gr_check_memalign.m4 \
	$(top_srcdir)/config/gr_check_shm_open.m4 \
	$(top_srcdir)/config/gr_doxygen.m4 \
	$(top_srcdir)/config/gr_git.m4 \
	$(top_srcdir)/config/gr_gprof.m4 \
	$(top_srcdir)/config/gr_lib64.m4 \
	$(top_srcdir)/config/gr_libgnuradio_core_extra_ldflags.m4 \
	$(top_srcdir)/config/gr_no_undefined.m4 \
	$(top_srcdir)/config/gr_pwin32.m4 \
	$(top_srcdir)/config/gr_python.m4 \
	$(top_srcdir)/config/gr_qwt.m4 \
	$(top_srcdir)/config/gr_qwtplot3d.m4 \
	$(top_srcdir)/config/gr_scripting.m4 \
	$(top_srcdir)/config/gr_set_md_cpu.m4 \
	$(top_srcdir)/config/gr_swig.m4 \
	$(top_srcdir)/config/gr_sysv_shm.m4 \
	$(top_srcdir)/config/gr_version.m4 \
	$(top_srcdir)/config/grc_build.m4 \
	$(top_srcdir)/config/grc_docs.m4 \
	$(top_srcdir)/config/grc_gcell.m4 \
	$(top_srcdir)/config/grc_gnuradio_core.m4 \
	$(top_srcdir)/config/grc_gnuradio_examples.m4 \
	$(top_srcdir)/config/grc_gr_atsc.m4 \
	$(top_srcdir)/config/grc_gr_audio_alsa.m4 \
	$(top_srcdir)/config/grc_gr_audio_jack.m4 \
	$(top_srcdir)/config/grc_gr_audio_oss.m4 \
	$(top_srcdir)/config/grc_gr_audio_osx.m4 \
	$(top_srcdir)/config/grc_gr_audio_portaudio.m4 \
	$(top_srcdir)/config/grc_gr_audio_windows.m4 \
	$(top_srcdir)/config/grc_gr_comedi.m4 \
	$(top_srcdir)/config/grc_gr_cvsd_vocoder.m4 \
	$(top_srcdir)/config/grc_gr_gcell.m4 \
	$(top_srcdir)/config/grc_gr_gpio.m4 \
	$(top_srcdir)/config/grc_gr_gsm_fr_vocoder.m4 \
	$(top_srcdir)/config/grc_gr_msdd6000.m4 \
	$(top_srcdir)/config/grc_gr_noaa.m4 \
	$(top_srcdir)/config/grc_gr_pager.m4 \
	$(top_srcdir)/config/grc_gr_qtgui.m4 \
	$(top_srcdir)/config/grc_gr_radar_mono.m4 \
	$(top_srcdir)/config/grc_gr_radio_astronomy.m4 \
	$(top_srcdir)/config/grc_gr_sounder.m4 \
	$(top_srcdir)/config/grc_gr_trellis.m4 \
	$(top_srcdir)/config/grc_gr_usrp.m4 \
	$(top_srcdir)/config/grc_gr_usrp2.m4 \
	$(top_srcdir)/config/grc_gr_utils.m4 \
	$(top_srcdir)/config/grc_gr_video_sdl.m4 \
	$(top_srcdir)/config/grc_gr_wxgui.m4 \
	$(top_srcdir)/config/grc_grc.m4 \
	$(top_srcdir)/config/grc_gruel.m4 \
	$(top_srcdir)/config/grc_usrp.m4 \
	$(top_srcdir)/config/grc_usrp2.m4 \
	$(top_srcdir)/config/lf_cc.m4 $(top_srcdir)/config/lf_cxx.m4 \
	$(top_srcdir)/config/lf_warnings.m4 \
	$(top_srcdir)/config/macosx_audiounit.m4 \
	$(top_srcdir)/config/mkstemp.m4 \
	$(top_srcdir)/config/onceonly.m4 $(top_srcdir)/config/pkg.m4 \
	$(top_srcdir)/config/sdl.m4 \
	$(top_srcdir)/config/usrp_fusb_tech.m4 \
	$(top_srcdir)/config/usrp_libusb.m4 \
	$(top_srcdir)/config/usrp_sdcc.m4 \
	$(top_srcdir)/config/gr_standalone.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES =
SOURCES =
DIST_SOURCES =
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }
DIST_ARCHIVES = $(distdir).tar.gz
GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/pfb/src/Passive-Radar/missing --run aclocal-1.10
AMTAR = ${SHELL} /home/pfb/src/Passive-Radar/missing --run tar
AR = ar
AUTOCONF = ${SHELL} /home/pfb/src/Passive-Radar/missing --run autoconf
AUTOHEADER = ${SHELL} /home/pfb/src/Passive-Radar/missing --run autoheader
AUTOMAKE = ${SHELL} /home/pfb/src/Passive-Radar/missing --run automake-1.10
AWK = gawk
CC = gcc
CCAS = gcc
CCASDEPMODE = depmode=gcc3
CCASFLAGS = 
CCDEPMODE = depmode=gcc3
CFLAGS = 
CPP = gcc -E
CPPFLAGS = 
CXX = g++
CXXCPP = g++ -E
CXXDEPMODE = depmode=gcc3
CXXFLAGS = 
CYGPATH_W = echo
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DSYMUTIL = 
ECHO = echo
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/grep -E
EXEEXT = 
F77 = 
FFLAGS = 
GREP = /bin/grep
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
LDFLAGS = 
LIBOBJS = 
LIBS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LN_S = ln -s
LTLIBOBJS = 
MAKEINFO = ${SHELL} /home/pfb/src/Passive-Radar/missing --run makeinfo
MKDIR_P = /bin/mkdir -p
NMEDIT = 
OBJEXT = o
PACKAGE = passive_radar
PACKAGE_BUGREPORT = BUG-REPORT-ADDRESS
PACKAGE_NAME = FULL-PACKAGE-NAME
PACKAGE_STRING = FULL-PACKAGE-NAME VERSION
PACKAGE_TARNAME = full-package-name
PACKAGE_VERSION = VERSION
PATH_SEPARATOR = :
PYTHON = /usr/bin/python
PYTHON_EXEC_PREFIX = ${exec_prefix}
PYTHON_PLATFORM = linux2
PYTHON_PREFIX = ${prefix}
PYTHON_VERSION = 2.5
RANLIB = ranlib
SED = /bin/sed
SET_MAKE = 
SHELL = /bin/sh
STRIP = strip
VERSION = 0.1
abs_builddir = /home/pfb/src/Passive-Radar
abs_srcdir = /home/pfb/src/Passive-Radar
abs_top_builddir = /home/pfb/src/Passive-Radar
abs_top_srcdir = /home/pfb/src/Passive-Radar
ac_ct_CC = gcc
ac_ct_CXX = g++
ac_ct_F77 = 
am__include = include
am__leading_dot = .
am__quote = 
am__tar = ${AMTAR} chof - "$$tardir"
am__untar = ${AMTAR} xf -
autoconf_default_CFLAGS = -g -O2
autoconf_default_CXXFLAGS = -g -O2
bindir = ${exec_prefix}/bin
build = i686-pc-linux-gnu
build_alias = 
build_cpu = i686
build_os = linux-gnu
build_vendor = pc
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
gr_libdir_suffix = 
host = i686-pc-linux-gnu
host_alias = 
host_cpu = i686
host_os = linux-gnu
host_vendor = pc
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = $(SHELL) /home/pfb/src/Passive-Radar/install-sh
lf_CFLAGS =  -Wall -Werror-implicit-function-declaration
lf_CXXFLAGS =  -Wall -Woverloaded-virtual
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
mkdir_p = /bin/mkdir -p
oldincludedir = /usr/include
pdfdir = ${docdir}
pkgpyexecdir = ${pyexecdir}/passive_radar
pkgpythondir = ${pythondir}/passive_radar
prefix = /usr/local
program_transform_name = s,x,x,
psdir = ${docdir}
pyexecdir = ${exec_prefix}/lib/python2.5/site-packages
pythondir = ${prefix}/lib/python2.5/site-packages
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
swig_CXXFLAGS = -g -O1 -Wno-strict-aliasing -Wno-parentheses
sysconfdir = ${prefix}/etc
target_alias = 
top_builddir = .
top_srcdir = .
with_INCLUDES = 
with_LIBDIRPATH = 
with_PYDIRPATH = 
with_SWIGDIRPATH = 
with_SWIG_INCLUDES = 
AM_CFLAGS = -g -O2  -Wall -Werror-implicit-function-declaration
AM_CXXFLAGS = -g -O2  -Wall -Woverloaded-virtual

# Sets ABI version in SONAME and appends -LIBVER to filename
LTVERSIONFLAGS = -version-info 0:0:0 -release $(LIBVER)

# includes
grincludedir = $(includedir)/gnuradio

# swig includes
swigincludedir = $(grincludedir)/swig

# Install the gnuradio stuff in the appropriate subdirectory
# This usually ends up at:
#   ${prefix}/lib/python${python_version}/site-packages/gnuradio
grpythondir = $(pythondir)/gnuradio
grpyexecdir = $(pyexecdir)/gnuradio

# Install the non-gnuradio usrp stuff in the appropriate subdirectory
# This usually ends up at:
#   ${prefix}/lib/python${python_version}/site-packages/usrpm
usrppythondir = $(pythondir)/usrpm
usrppyexecdir = $(pyexecdir)/usrpm

# gcell includes
gcellincludedir = $(includedir)/gcell
gcellspuincludedir = $(includedir)/gcell/spu

# Cell spu libs
libspudir = $(libdir)spu

# This used to be set in configure.ac but is now defined here for all 
# Makefiles when this fragment is included.
STD_DEFINES_AND_INCLUDES = $(DEFINES) $(BOOST_CPPFLAGS) \
	$(GNURADIO_INCLUDES) $(GRUEL_INCLUDES)


# when including for compilation from pre-installed libraries and such,
# need to make sure those are put last on the compile command
WITH_INCLUDES = 
WITH_SWIG_INCLUDES = 

# Where to find gnuradio include files in the current build tree
# top_srcdir for original stuff, top_builddir for generated files
GNURADIO_INCLUDES = @gnuradio_core_INCLUDES@

# How to link in GNU Radio core library from inside the tree
GNURADIO_CORE_LA = @gnuradio_core_LA@

# How to link in the USRP library from inside the tree
GRUEL_INCLUDES = @gruel_INCLUDES@
GRUEL_LA = @gruel_LA@

# How to link in the USRP library from inside the tree
USRP_INCLUDES = @usrp_INCLUDES@
USRP_LA = @usrp_LA@

# How to link the gcell library from inside the tree (the PPU part)
GCELL_INCLUDES = @gcell_INCLUDES@
GCELL_LA = @gcell_LA@

# How to link the gcell library from inside the tree (the SPU part)
GCELL_SPU_INCLUDES = @gcell_spu_INCLUDES@
GCELL_SPU_LA = @gcell_spu_LA@

# libtool aware wrapper for ppu-embedspu
GCELL_EMBEDSPU_LIBTOOL = /home/pfb/src/Passive-Radar/gcell/lib/runtime/gcell-embedspu-libtool

# Fix for BSD make not defining $(RM).  We define it now in configure.ac
# using AM_PATH_PROG, but now here have to add a -f to be like GNU make
RM = $(RM_PROG) -f
RUN_GUILE = GUILE_LOAD_PATH="/home/pfb/src/Passive-Radar/gruel/src/scheme" @GUILE@ -e main -s

# Base directory for example applications
exampledir = $(datadir)/gnuradio/examples
gr_docdir = $(docdir)-$(DOCVER)

# System configuration files
gr_prefsdir = $(GR_PREFSDIR)

# Data directory for grc block wrappers
grc_blocksdir = $(pkgdatadir)/grc/blocks

# Other common defines; use "+=" to add to these
STAMPS = 
MOSTLYCLEANFILES = $(BUILT_SOURCES) $(STAMPS) *.pyc *.pyo *~ *.tmp *.loT

# Install m4 macros in this directory
m4datadir = $(datadir)/aclocal

# List your m4 macros here
m4macros = \
	acx_cblas.m4 \
	acx_pthread.m4 \
	ax_boost_base.m4 \
	ax_boost_date_time.m4 \
	ax_boost_filesystem.m4 \
	ax_boost_iostreams.m4 \
	ax_boost_program_options.m4 \
	ax_boost_python.m4 \
	ax_boost_regex.m4 \
	ax_boost_serialization.m4 \
	ax_boost_signals.m4 \
	ax_boost_system.m4 \
	ax_boost_test_exec_monitor.m4 \
	ax_boost_thread.m4 \
	ax_boost_unit_test_framework.m4 \
	ax_boost_wserialization.m4 \
	bnv_have_qt.m4 \
	cppunit.m4 \
	grc_build.m4 \
	grc_docs.m4 \
	grc_gcell.m4 \
	grc_gnuradio_core.m4 \
	grc_gnuradio_examples.m4 \
	grc_grc.m4 \
	grc_gr_atsc.m4 \
	grc_gr_audio_alsa.m4 \
	grc_gr_audio_jack.m4 \
	grc_gr_audio_oss.m4 \
	grc_gr_audio_osx.m4 \
	grc_gr_audio_portaudio.m4 \
	grc_gr_audio_windows.m4 \
	grc_gr_comedi.m4 \
	grc_gr_gcell.m4 \
	grc_gr_gpio.m4 \
	grc_gr_gsm_fr_vocoder.m4 \
	grc_gr_noaa.m4 \
	grc_gr_radar_mono.m4 \
	grc_gr_radio_astronomy.m4 \
	grc_gr_sounder.m4 \
	grc_gr_trellis.m4 \
	grc_gr_usrp.m4 \
	grc_gr_video_sdl.m4 \
	grc_gr_wxgui.m4 \
	grc_gruel.m4 \
	gr_check_createfilemapping.m4 \
	gr_check_mc4020.m4 \
	gr_check_shm_open.m4 \
	gr_check_usrp.m4 \
	grc_usrp.m4 \
	grc_usrp2.m4 \
	grc_gr_msdd6000.m4 \
	gr_doxygen.m4 \
	gr_fortran.m4 \
	gr_gcell.m4 \
	gr_git.m4 \
	gr_gprof.m4 \
	gr_lib64.m4 \
	gr_libgnuradio_core_extra_ldflags.m4 \
	gr_no_undefined.m4 \
	gr_pwin32.m4 \
	gr_python.m4 \
	gr_require_mc4020.m4 \
	gr_scripting.m4 \
	gr_set_md_cpu.m4 \
	gr_standalone.m4 \
	gr_subversion.m4 \
	gr_swig.m4 \
	gr_sysv_shm.m4 \
	gr_version.m4 \
	lf_cc.m4 \
	lf_cxx.m4 \
	lf_warnings.m4 \
	lf_x11.m4 \
	macosx_audiounit.m4 \
	mkstemp.m4 \
	onceonly.m4 \
	pkg.m4 \
	sdl.m4 \
	usrp_fusb_tech.m4 \
	usrp_libusb.m4 \
	usrp_sdcc.m4

EXTRA_DIST = $(m4macros) 
all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
am--refresh:
	@:
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am $(top_srcdir)/Makefile.common $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --gnu '; \
	      cd $(srcdir) && $(AUTOMAKE) --gnu  \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu  Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) $(AM_MAKEFLAGS) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h
$(srcdir)/config.h.in:  $(am__configure_deps) 
	cd $(top_srcdir) && $(AUTOHEADER)
	rm -f stamp-h1
	touch $@

distclean-hdr:
	-rm -f config.h stamp-h1

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool
tags: TAGS
TAGS:

ctags: CTAGS
CTAGS:


distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d $(distdir) || mkdir $(distdir)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	$(MAKE) $(AM_MAKEFLAGS) \
	  top_distdir="$(top_distdir)" distdir="$(distdir)" \
	  dist-hook
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist-lzma: distdir
	tardir=$(distdir) && $(am__tar) | lzma -9 -c >$(distdir).tar.lzma
	$(am__remove_distdir)

dist-tarZ: distdir
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__remove_distdir)

dist dist-all: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bunzip2 -c $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lzma*) \
	  unlzma -c $(distdir).tar.lzma | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-am
all-am: Makefile config.h
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:
	-test -z "$(MOSTLYCLEANFILES)" || rm -f $(MOSTLYCLEANFILES)

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -f Makefile
distclean-am: clean-am distclean-generic distclean-hdr \
	distclean-libtool

dvi: dvi-am

dvi-am:

html: html-am

info: info-am

info-am:

install-data-am:

install-dvi: install-dvi-am

install-exec-am:

install-html: install-html-am

install-info: install-info-am

install-man:

install-pdf: install-pdf-am

install-ps: install-ps-am

installcheck-am:

maintainer-clean: maintainer-clean-am
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

ps: ps-am

ps-am:

uninstall-am:

.MAKE: install-am install-strip

.PHONY: all all-am am--refresh check check-am clean clean-generic \
	clean-libtool dist dist-all dist-bzip2 dist-gzip dist-hook \
	dist-lzma dist-shar dist-tarZ dist-zip distcheck distclean \
	distclean-generic distclean-hdr distclean-libtool \
	distcleancheck distdir distuninstallcheck dvi dvi-am html \
	html-am info info-am install install-am install-data \
	install-data-am install-dvi install-dvi-am install-exec \
	install-exec-am install-html install-html-am install-info \
	install-info-am install-man install-pdf install-pdf-am \
	install-ps install-ps-am install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am ps ps-am uninstall uninstall-am


# Base directory for documentation (docdir undefined in autoconf < 1.60)
docdir ?= $(datadir)/doc/$(PACKAGE)

# Don't distribute the files defined in the variable 'no_dist_files'
dist-hook:
	@for file in $(no_dist_files); do \
		echo $(RM) $(distdir)/$$file; \
		$(RM) $(distdir)/$$file; \
	done;
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
