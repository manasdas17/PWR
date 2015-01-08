#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Mon Jan 31 01:13:09 2011
##################################################

from gnuradio import blks2
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import wx

class top_block(grc_wxgui.top_block_gui):

	def __init__(self):
		grc_wxgui.top_block_gui.__init__(self, title="Top Block")
		_icon_path = "/home/pfb/.local/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
		self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

		##################################################
		# Variables
		##################################################
		self.samp_rate = samp_rate = 16000000

		##################################################
		# Blocks
		##################################################
		self.M_Sequence = gr.vector_source_f((-1,  -1,   1,   1,  -1,   1,   1,   1,   1,  -1,   1,   1,   1,  -1,   1,  -1,  -1,  -1,  -1,  -1, -1,  -1,   1,  -1,   1,  -1,   1,   1,  -1,  -1,  -1,   1,   1,  -1,  -1,   1,   1,   1,  -1,  -1,  -1,  -1,  -1,  -1,   1,   1,   1,   1,   1,  -1,   1,  -1,  -1,   1,  -1,   1,  -1,   1,  -1,  -1,  1,  -1,  -1,  -1,  -1,  -1,   1,  -1,  -1,  -1,  -1,   1,   1,   1,  -1,   1,   1,   1,   1,   1,  1,  -1,   1,   1,  -1,  -1,  -1,  -1,   1,   1,  -1,  -1,  -1,   1,  -1,  -1,   1,   1,  -1,  -1,  -1,  -1,  -1,   1,   1,  -1,   1,  -1,  -1,  -1,   1,  -1,   1,  -1,  -1,   1,   1,  -1,   1,  -1,  1,  -1,  -1,  -1,  -1,   1,  -1,   1,   1,   1,  -1,  -1,   1,   1,   1,   1,  -1,   1,  -1,   1,  1,   1,   1,   1,  -1,  -1,  -1,   1,   1,   1,  -1,  -1,   1,  -1,   1,  -1,  -1,  -1,   1,   1,  1,   1,  -1,  -1,  -1,  -1,   1,  -1,  -1,   1,  -1,  -1,   1,  -1,   1,   1,   1,   1,  -1,  -1,  1,  -1,  -1,  -1,   1,  -1,  -1,  -1,   1,   1,  -1,   1,   1,  -1,   1,   1,   1,  -1,  -1,  -1,  1,  -1,   1,   1,  -1,  -1,   1,   1,  -1,  -1,   1,  -1,   1,   1,  -1,   1,   1,  -1,  -1,   1,  -1,  -1,   1,   1,   1,  -1,   1,  -1,   1,  -1,   1,  -1,   1,   1,   1,  -1,   1,   1,  -1,   1,  -1,   1,   1,  -1,   1,  -1,  -1,   1,   1,   1,   1,   1,   1,   1,   1), True, 1)
		self.M_Sequence_Baseband_Modulator = blks2.dbpsk_mod(
			samples_per_symbol=2,
			excess_bw=0.35,
			gray_code=False,
			verbose=False,
			log=False,
		)
		self.blks2_dxpsk_mod_0 = blks2.dbpsk_mod(
			samples_per_symbol=2,
			excess_bw=0.35,
			gray_code=True,
			verbose=False,
			log=False,
		)
		self.gr_add_xx_0 = gr.add_vcc(1)
		self.gr_delay_0 = gr.delay(gr.sizeof_char*1, 16)
		self.gr_file_sink_0 = gr.file_sink(gr.sizeof_gr_complex*1, "../M_Sequence_Baseband.cmplx")
		self.gr_float_to_char_0 = gr.float_to_char()
		self.gr_multiply_const_vxx_0 = gr.multiply_const_vcc((0, ))
		self.gr_throttle_0 = gr.throttle(gr.sizeof_gr_complex*1, samp_rate)

		##################################################
		# Connections
		##################################################
		self.connect((self.gr_throttle_0, 0), (self.gr_file_sink_0, 0))
		self.connect((self.gr_delay_0, 0), (self.blks2_dxpsk_mod_0, 0))
		self.connect((self.blks2_dxpsk_mod_0, 0), (self.gr_multiply_const_vxx_0, 0))
		self.connect((self.gr_multiply_const_vxx_0, 0), (self.gr_add_xx_0, 1))
		self.connect((self.M_Sequence_Baseband_Modulator, 0), (self.gr_add_xx_0, 0))
		self.connect((self.gr_add_xx_0, 0), (self.gr_throttle_0, 0))
		self.connect((self.M_Sequence, 0), (self.gr_float_to_char_0, 0))
		self.connect((self.gr_float_to_char_0, 0), (self.M_Sequence_Baseband_Modulator, 0))
		self.connect((self.gr_float_to_char_0, 0), (self.gr_delay_0, 0))

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	tb = top_block()
	tb.Run(True)

