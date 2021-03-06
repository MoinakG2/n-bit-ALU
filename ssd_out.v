`timescale 1ns / 1ps
module display_out(
    input [3:0] LED_BCD,
    output reg [6:0] BCD_display
    );
    
    
    always @(*) //convert the binary decimal representation to a format for the seven segment display
    begin
        case (LED_BCD)
            4'b0000: BCD_display = 7'b0000001; // out = 0
            4'b0001: BCD_display = 7'b1001111; // out = 1
            4'b0010: BCD_display = 7'b0010010; // out = 2
            4'b0011: BCD_display = 7'b0000110; // out = 3
            4'b0100: BCD_display = 7'b1001100; // out = 4
            4'b0101: BCD_display = 7'b0100100; // out = 5
            4'b0110: BCD_display = 7'b0100000; // out = 6
            4'b0111: BCD_display = 7'b0001111; // out = 7
            4'b1000: BCD_display = 7'b0000000; // out = 8
            4'b1001: BCD_display = 7'b0000100; // out = 9
            4'b1010: BCD_display = 7'b1111110; // out = -
            4'b1011: BCD_display = 7'b1111111; // out = no segments lit up
        endcase
    end
endmodule
