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
   def __init__(self, sample_rate, center_freq):
       gr.top_block.__init__(self)

       # Make a local QtApp so we can start it from our side
       self.qapp = QtGui.QApplication(sys.argv)

       fftsize = 2048

       self.src = uhd.single_usrp_source(io_type = uhd.io_type_t.COMPLEX_FLOAT32, num_channels = 1)
       self.snk = qtgui.sink_c(fftsize, gr.firdes.WIN_BLACKMAN_hARRIS)

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
    tb = my_tb()
    tb.start()
    tb.qapp.exec_()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass

