/* -*- c++ -*- */
/*
 * Copyright 2004 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <itpp/base/vec.h>

/*
 * Specify constraints on number of input and output streams.
 * This info is used to construct the input and output signatures
 * (2nd & 3rd args to gr_block's constructor).  The input and
 * output signatures are used by the runtime system to
 * check that a valid number and type of inputs and outputs
 * are connected to this block.  In this case, we accept
 * only 1 input and 1 output.
 */
static const int MIN_IN  = 1;   // mininum number of input streams
static const int MAX_IN  = 1;   // maximum number of input streams
static const int MIN_OUT = 1;   // minimum number of output streams
static const int MAX_OUT = 1;   // maximum number of output streams
#include "c_psc_fft.h"

/*
 * Ctor.
 */

gr_correlate_psc_cc::gr_correlate_psc_cc("gr_correlate_psc_cc",
                                         gr_make_io_signature(MIN_IN, MAX_IN, sizeof(gr_complex)).
                                         gr_make_io_signature(MIN_IN, MAX_IN, sizeof(gr_complex)))
  : gr_block("correlate_psc_cc", 
             gr_make_io_signature (1, 1, sizeof(gr_complex)),
		         gr_make_io_signature (1, 1, sizeof(gr_complex)))
  {
  }

/*
 * Dtor.
 */
gr_correlate_psc_cc::~gr_correlate_psc_cc()
  {
  }

int
gr_correlate_psc_cc::general_work(int noutput_items,
                                  gr_vector_int &ninput_items,
                                  gr_vector_const_void_star &input_items,
                                  gr_vector_void_star &output_items)
  {
  const gr_complex *in  = (gr_complex *)input_items[0];
        gr_complex *out = (gr_complex *)output_items[0];
  itcpp::cvec trial(256);

  trail.zeros();
  for (int i = 0; i < trial.size(); i++)
    {
    trial[i] = in[i];
    }

  iout = itcpp::xcorr(C_PSC_FFT, trial);
  return noutput_items;
  }


