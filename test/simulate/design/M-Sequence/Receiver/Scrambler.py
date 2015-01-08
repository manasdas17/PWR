#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Scrambler
# Generated: Mon Jan 31 18:06:50 2011
##################################################

from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from gnuradio.wxgui import fftsink2
from gnuradio.wxgui import scopesink2
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import wx

class Scrambler(grc_wxgui.top_block_gui):

	def __init__(self):
		grc_wxgui.top_block_gui.__init__(self, title="Scrambler")
		_icon_path = "/home/pfb/.local/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
		self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

		##################################################
		# Variables
		##################################################
		self.samp_rate = samp_rate = 32000

		##################################################
		# Blocks
		##################################################
		self.gr_add_xx_0 = gr.add_vff(1)
		self.gr_char_to_float_0 = gr.char_to_float()
		self.gr_interp_fir_filter_xxx_0 = gr.interp_fir_filter_fff(4, (24, ))
		self.gr_multiply_xx_0 = gr.multiply_vff(1)
		self.gr_scrambler_bb_0 = gr.scrambler_bb(0x8A, 0x7F, 7)
		self.gr_throttle_0 = gr.throttle(gr.sizeof_char*1, samp_rate)
		self.gr_vector_source_x_0 = gr.vector_source_b((0, 0, 0), True, 1)
		self.gr_vector_source_x_0_0 = gr.vector_source_f((-0.5, ), True, 1)
		self.gr_vector_source_x_0_0_0 = gr.vector_source_f((2.0, ), True, 1)
		self.wxgui_fftsink2_0 = fftsink2.fft_sink_f(
			self.GetWin(),
			baseband_freq=0,
			y_per_div=10,
			y_divs=10,
			ref_level=50,
			ref_scale=2.0,
			sample_rate=samp_rate * 2,
			fft_size=4096,
			fft_rate=30,
			average=False,
			avg_alpha=None,
			title="FFT Plot",
			peak_hold=False,
		)
		self.Add(self.wxgui_fftsink2_0.win)
		self.wxgui_scopesink2_0 = scopesink2.scope_sink_f(
			self.GetWin(),
			title="Scope Plot",
			sample_rate=samp_rate,
			v_scale=1,
			v_offset=0,
			t_scale=.0005,
			ac_couple=False,
			xy_mode=False,
			num_inputs=1,
		)
		self.Add(self.wxgui_scopesink2_0.win)

		##################################################
		# Connections
		##################################################
		self.connect((self.gr_scrambler_bb_0, 0), (self.gr_char_to_float_0, 0))
		self.connect((self.gr_vector_source_x_0, 0), (self.gr_throttle_0, 0))
		self.connect((self.gr_throttle_0, 0), (self.gr_scrambler_bb_0, 0))
		self.connect((self.gr_char_to_float_0, 0), (self.gr_add_xx_0, 1))
		self.connect((self.gr_add_xx_0, 0), (self.gr_multiply_xx_0, 1))
		self.connect((self.gr_vector_source_x_0_0, 0), (self.gr_add_xx_0, 0))
		self.connect((self.gr_vector_source_x_0_0_0, 0), (self.gr_multiply_xx_0, 0))
		self.connect((self.gr_multiply_xx_0, 0), (self.gr_interp_fir_filter_xxx_0, 0))
		self.connect((self.gr_interp_fir_filter_xxx_0, 0), (self.wxgui_fftsink2_0, 0))
		self.connect((self.gr_interp_fir_filter_xxx_0, 0), (self.wxgui_scopesink2_0, 0))

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate
		self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate)
		self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate * 2)

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	tb = Scrambler()
	tb.Run(True)

