#!/usr/bin/env python
##################################################
# Gnuradio Python Flow Graph
# Title: Top Block
# Generated: Sun Jan 30 16:52:47 2011
##################################################

from gnuradio import blks2
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from gnuradio.wxgui import fftsink2
from gnuradio.wxgui import forms
from gnuradio.wxgui import scopesink2
from grc_gnuradio import blks2 as grc_blks2
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
		self.variable_check_box_1 = variable_check_box_1 = True
		self.variable_check_box_0 = variable_check_box_0 = True
		self.samp_rate = samp_rate = 10000

		##################################################
		# Notebooks
		##################################################
		self.notebook_0 = wx.Notebook(self.GetWin(), style=wx.NB_TOP)
		self.notebook_0.AddPage(grc_wxgui.Panel(self.notebook_0), "tab1")
		self.notebook_0.AddPage(grc_wxgui.Panel(self.notebook_0), "tab2")
		self.notebook_0.AddPage(grc_wxgui.Panel(self.notebook_0), "tab3")
		self.Add(self.notebook_0)

		##################################################
		# Controls
		##################################################
		self._variable_check_box_1_check_box = forms.check_box(
			parent=self.notebook_0.GetPage(0).GetWin(),
			value=self.variable_check_box_1,
			callback=self.set_variable_check_box_1,
			label="Secondry pipe",
			true=True,
			false=False,
		)
		self.notebook_0.GetPage(0).Add(self._variable_check_box_1_check_box)
		self._variable_check_box_0_check_box = forms.check_box(
			parent=self.notebook_0.GetPage(0).GetWin(),
			value=self.variable_check_box_0,
			callback=self.set_variable_check_box_0,
			label="Main pipe",
			true=True,
			false=False,
		)
		self.notebook_0.GetPage(0).Add(self._variable_check_box_0_check_box)

		##################################################
		# Blocks
		##################################################
		self.blks2_dxpsk_mod_0 = blks2.dbpsk_mod(
			samples_per_symbol=2,
			excess_bw=0.35,
			gray_code=True,
			verbose=False,
			log=False,
		)
		self.blks2_valve_0 = grc_blks2.valve(item_size=gr.sizeof_float*1, open=bool(not(variable_check_box_0)))
		self.blks2_valve_1 = grc_blks2.valve(item_size=gr.sizeof_float*1, open=bool(not(variable_check_box_1)))
		self.gr_float_to_char_0 = gr.float_to_char()
		self.gr_interp_fir_filter_xxx_0 = gr.interp_fir_filter_fff(2, (12, ))
		self.gr_noise_source_x_0 = gr.noise_source_f(gr.GR_GAUSSIAN, 1, 42)
		self.gr_throttle_0 = gr.throttle(gr.sizeof_float*1, samp_rate)
		self.gr_throttle_1 = gr.throttle(gr.sizeof_float*1, samp_rate)
		self.gr_vector_source_x_0 = gr.vector_source_f(( -1,  -1,   1,   1,  -1,   1,   1,   1,   1,  -1,   1,   1,   1,  -1,   1,  -1,  -1,  -1,  -1,  -1, -1,  -1,   1,  -1,   1,  -1,   1,   1,  -1,  -1,  -1,   1,   1,  -1,  -1,   1,   1,   1,  -1,  -1,  -1,  -1,  -1,  -1,   1,   1,   1,   1,   1,  -1,   1,  -1,  -1,   1,  -1,   1,  -1,   1,  -1,  -1,  1,  -1,  -1,  -1,  -1,  -1,   1,  -1,  -1,  -1,  -1,   1,   1,   1,  -1,   1,   1,   1,   1,   1,  1,  -1,   1,   1,  -1,  -1,  -1,  -1,   1,   1,  -1,  -1,  -1,   1,  -1,  -1,   1,   1,  -1,  -1,  -1,  -1,  -1,   1,   1,  -1,   1,  -1,  -1,  -1,   1,  -1,   1,  -1,  -1,   1,   1,  -1,   1,  -1,  1,  -1,  -1,  -1,  -1,   1,  -1,   1,   1,   1,  -1,  -1,   1,   1,   1,   1,  -1,   1,  -1,   1,  1,   1,   1,   1,  -1,  -1,  -1,   1,   1,   1,  -1,  -1,   1,  -1,   1,  -1,  -1,  -1,   1,   1,  1,   1,  -1,  -1,  -1,  -1,   1,  -1,  -1,   1,  -1,  -1,   1,  -1,   1,   1,   1,   1,  -1,  -1,  1,  -1,  -1,  -1,   1,  -1,  -1,  -1,   1,   1,  -1,   1,   1,  -1,   1,   1,   1,  -1,  -1,  -1,  1,  -1,   1,   1,  -1,  -1,   1,   1,  -1,  -1,   1,  -1,   1,   1,  -1,   1,   1,  -1,  -1,   1,  -1,  -1,   1,   1,   1,  -1,   1,  -1,   1,  -1,   1,  -1,   1,   1,   1,  -1,   1,   1,  -1,   1,  -1,   1,   1,  -1,   1,  -1,  -1,   1,   1,   1,   1,   1,   1,   1,   1), True, 1)
		self.wxgui_fftsink2_0 = fftsink2.fft_sink_c(
			self.GetWin(),
			baseband_freq=0,
			y_per_div=10,
			y_divs=10,
			ref_level=50,
			ref_scale=2.0,
			sample_rate=samp_rate,
			fft_size=1024,
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
			sample_rate=samp_rate * 2,
			v_scale=1,
			v_offset=0,
			t_scale=.001,
			ac_couple=False,
			xy_mode=False,
			num_inputs=1,
		)
		self.Add(self.wxgui_scopesink2_0.win)

		##################################################
		# Connections
		##################################################
		self.connect((self.gr_float_to_char_0, 0), (self.blks2_dxpsk_mod_0, 0))
		self.connect((self.blks2_dxpsk_mod_0, 0), (self.wxgui_fftsink2_0, 0))
		self.connect((self.gr_throttle_0, 0), (self.gr_interp_fir_filter_xxx_0, 0))
		self.connect((self.gr_noise_source_x_0, 0), (self.gr_throttle_0, 0))
		self.connect((self.gr_vector_source_x_0, 0), (self.gr_throttle_1, 0))
		self.connect((self.gr_interp_fir_filter_xxx_0, 0), (self.blks2_valve_0, 0))
		self.connect((self.blks2_valve_0, 0), (self.gr_float_to_char_0, 0))
		self.connect((self.gr_throttle_1, 0), (self.blks2_valve_1, 0))
		self.connect((self.blks2_valve_1, 0), (self.wxgui_scopesink2_0, 0))

	def set_variable_check_box_1(self, variable_check_box_1):
		self.variable_check_box_1 = variable_check_box_1
		self.blks2_valve_1.set_open(bool(not(self.variable_check_box_1)))
		self._variable_check_box_1_check_box.set_value(self.variable_check_box_1)

	def set_variable_check_box_0(self, variable_check_box_0):
		self.variable_check_box_0 = variable_check_box_0
		self.blks2_valve_0.set_open(bool(not(self.variable_check_box_0)))
		self._variable_check_box_0_check_box.set_value(self.variable_check_box_0)

	def set_samp_rate(self, samp_rate):
		self.samp_rate = samp_rate
		self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate)
		self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate * 2)

if __name__ == '__main__':
	parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
	(options, args) = parser.parse_args()
	if gr.enable_realtime_scheduling() != gr.RT_OK:
		print "Error: failed to enable realtime scheduling."
	tb = top_block()
	tb.Run(True)

