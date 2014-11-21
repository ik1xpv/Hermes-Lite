//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

//  Sigma delta modulator
// (C) Oscar Steila , IK1XPV 2014
//
//  tested with clock 72.728 MHz FPGA CIV
//  output filtering 
//  serie resistor 330 Ohm 
//  capacitor to ground 4n7
//  serie capacitor 10uF 
//
//  http:\\www.steila.com\hermeslite\index.html
//

module DAC_D(clock, sample, data_out);

input clock;
input [15:0] sample;
output data_out;
reg [16:0] integrator;

always @(posedge clock) integrator <= integrator[15:0] + {~sample[15] ,sample[14:0]};
assign data_out = integrator[16];

endmodule



