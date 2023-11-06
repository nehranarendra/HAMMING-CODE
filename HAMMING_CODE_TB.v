`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NATIONAL INSTITUTE OF TECHNOLOGY WARANGAL
// Engineer: NARENDRA KUMAR NEHRA 
//
// Create Date: 21.02.2023 03:40:40
// Design Name: 
// Module Name: 8_BIT_VEDIC_MULTIPLIER
//////////////////////////////////////////////////////////////////////////////////

module HAMMING_CODE_TB();
reg [7:1] D;
reg EN;
wire [7:1] O;
wire Error;

Hamming_Code_7bit HM_1(D,Error,O,EN);

initial 
begin
D = 7'b0000000;
EN = 1;

    #10 D = 7'b0101010;
    #10 D = 7'b1101010;
    #10 D = 7'b0101110;
    #10 D = 7'b0110100;
end
 
initial $monitor ($time, " D = %b, EN = %b, O = %b, Error = %b",D,EN,O,Error);
initial #50 $stop;

endmodule
