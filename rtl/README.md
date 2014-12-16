
Hermes-Lite RTL
===============

This FPGA code is a port of the Hermes V2.5 code from openhpsdr.org. This FPGA code can be compiled with the Quartus II 13.1 Web Edition software from Altera. The project file is Hermes_Lite.qpf. New firmware may be downloaded to the BeMicro SDK via the USB ByteBlaster interface or using HPSDRProgrammerV2 once Hermes-Lite code has been flashed. The current firmware supports 2 receiver and 1 transmitter. 
This branch activates the interface to a TLV320AIC23B codec following with small changes the Hermes scheme.

The directory myhdl contains [myhdl](http://myhdl.org) python code. Use ad9866_conv.py to convert it to python.

See the GitHub issues for this project for more details.

