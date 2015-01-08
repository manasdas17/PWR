#!/usr/bin/env python
 
from gnuradio import gr
from gnuradio import eng_notation
from gnuradio import uhd
from gnuradio import window
from gnuradio.eng_option import eng_option
from gnuradio.gr import firdes
from gnuradio.qtgui import qtgui

from PyQt4 import QtGui
from optparse import OptionParser
import sys, sip

class my_tb(gr.top_block):
   def __init__(self, sample_rate, center_freq, gain, device_addr = ""):
       gr.top_block.__init__(self)

       # Make a local QtApp so we can start it from our side
       self.qapp = QtGui.QApplication(sys.argv)

       fftsize = 2048

       self.src = uhd.single_usrp_source(device_addr = "serial=4cfc2b4d",
                                         io_type = uhd.io_type_t.COMPLEX_FLOAT32,
                                         num_channels = 1)
       self.src.set_samp_rate(sample_rate)
       self.src.set_center_freq(center_freq, 0)
       self.src.set_gain(gain, 0)
       self.src.set_time_now(uhd.time_spec_t(0.0));
       self.snk = qtgui.sink_c(fftsize,
                               gr.firdes.WIN_BLACKMAN_hARRIS,
                               center_freq,
                               self.src.get_samp_rate(),
                               "Realtime Display")

       cmd = uhd.cmd_t(uhd.stream_cmd_t.STREAM_MODE_NUM_SAMPS_AND_DONE);
       self.connect(self.src, self.snk)

       # Tell the sink we want it displayed
       self.pyobj = sip.wrapinstance(self.snk.pyqwidget(), QtGui.QWidget)
       self.pyobj.show()
 
def main():
    parser = OptionParser(option_class = eng_option,
                          usage = "%prog: [options]")
    parser.add_option("-f", "--freq", type = "eng_float", default = 884.8e6,
                      help = "set center frequency [default = %default]")
    parser.add_option("-g", "--gain", type = "eng_float", default = 0,
                      help = "set gain [default = %default]")
    parser.add_option("-r", "--rate", type = "eng_float", default = 1e6,
                      help = "set USRP sample rate [ default = %default]")
    (options, args) = parser.parse_args()
    tb = my_tb(options.rate, options.freq, options.gain)
    tb.start()
    tb.qapp.exec_()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass

