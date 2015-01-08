#
# Copyright 2004 Free Software Foundation, Inc.
# 
# This file is part of GNU Radio
# 
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
# 
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA.
# 

include $(top_srcdir)/Makefile.common

# Install this stuff so that it ends up as the gnuradio.passive_radar module
# This usually ends up at:
#   ${prefix}/lib/python${python_version}/site-packages/gnuradio

ourpythondir = $(grpythondir)
ourlibdir    = $(grpyexecdir)
swigincludedir = $(grincludedir)/swig

INCLUDES = $(STD_DEFINES_AND_INCLUDES) $(PYTHON_CPPFLAGS)

SWIGCPPPYTHONARGS = -noruntime -c++ -python $(PYTHON_CPPFLAGS) \
        -I$(swigincludedir) -I$(grincludedir)

ALL_IFILES =                            \
        $(LOCAL_IFILES)                 \
        $(NON_LOCAL_IFILES)             

NON_LOCAL_IFILES =                      \
        $(GNURADIO_CORE_INCLUDEDIR)/swig/gnuradio.i


LOCAL_IFILES =                          \
        gr_correlate_psc_cc.i                         

# These files are built by SWIG.  The first is the C++ glue.
# The second is the python wrapper that loads the _gr_correlate_psc_cc
# shared library and knows how to call our extensions.

BUILT_SOURCES =                         \
        gr_correlate_psc_cc.cc          \
        gr_correlate_psc_cc.py                                

# This gets gr_correlate_psc_cc.py installed in the right place
ourpython_PYTHON =                      \
        gr_correlate_psc_cc.py

ourlib_LTLIBRARIES = _gr_correlate_psc_cc.la

# These are the source files that go into the shared library
_gr_correlate_psc_cc_la_SOURCES =       \
        gr_correlate_psc_cc.cc

# magic flags
_gr_correlate_psc_cc_la_LDFLAGS = -module -avoid-version

# link the library against some comon swig runtime code and the 
# c++ standard library
_gr_correlate_psc_cc_la_LIBADD =        \
        -lgrswigrunpy                   \
        -lstdc++                        

gr_correlate_psc_cc.cc gr_correlate_psc_cc.py: gr_correlate_psc_cc.i $(ALL_IFILES)
        $(SWIG) $(SWIGCPPPYTHONARGS) -module gr_correlate_psc_cc -o gr_correlate_psc_cc.cc $<

# These headers get installed in ${prefix}/include/gnuradio
grinclude_HEADERS =                     \
        gr_correlate_psc_cc.h           \
        c_psc_fft.h

# These swig headers get installed in ${prefix}/include/gnuradio/swig
swiginclude_HEADERS =                   \
        $(LOCAL_IFILES)

