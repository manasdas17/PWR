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
#ifndef INCLUDED_GR_CORRELATE_PSC_CC_H
#define INCLUDED_GR_CORRELATE_PSC_CC_H

#include <gr_block.h>

class gr_correlate_psc_cc;

/*!
 * \brief References to the object.
 */
typedef boost::shared_ptr<gr_correlate_psc_cc> gr_correlate_psc_cc_ptr;

/*!
 * \brief Return a pointer to this object.
 */
gr_correlate_psc_cc_ptr gr_correlate_psc_cc();

/*!
 * \brief Correlate an input stream against a PSC.
 * \ingroup block
 *
 * \sa 
 */
class gr_correlate_psc_cc : public gr_block
  {
  private:
    // Friend decl allows gr_correlate_psc_cc() to access the private Ctor.
    friend gr_correlate_psc_cc();

    // Ctor.
    gr_correlate_psc_cc();

  public:
    /*!
     * \brief Dtor.
     */
   ~gr_correlate_psc_cc();

   /*!
    * \brief Perform the correlation.
    */
   int general_work(int noutput_items,
                    gr_vector_int &ninput_items,
                    gr_vector_const_void_star &input_items,
                    gr_vector_void_star &output_items);

   /*!
    * \brief Number of output items is twice the number of input.
    */
  void gr_block::forecast(int noutput_items,
                          gr_vector_int &ninput_items_required);

  };

#endif
