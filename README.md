# FPGA-Digibot-Control
VHDL control circuit for regulating the behavior of a small robot using infrared sensors &amp; multiplexer arrays.

The control circuit is capable of changing the behavior of two motors using only 4 bits of information. The remaining bits are used to decode and
send info to a 7-segment display with 5 digits. This array of displays will print the current status of the robot as dictated by the controller entity.
