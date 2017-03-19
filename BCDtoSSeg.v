module BCDtoSSeg(inBCD,SSeg,an);

	input[3:0] inBCD;
	output reg[6:0] SSeg;
	output reg[7:0] an;


always @(*) begin

	an = 8'b11111110;	

	case(inBCD)
	  4'h0: SSeg = 7'b1000000;
		4'h1: SSeg = 7'b1111001;
		4'h2: SSeg = 7'b0100100;
		4'h3: SSeg = 7'b0110000;
		4'h4: SSeg = 7'b0011001;
		4'h5: SSeg = 7'b0010010;
		4'h6: SSeg = 7'b0000010;
		4'h7: SSeg = 7'b1111000;
		4'h8: SSeg = 7'b0000000;
		4'h9: SSeg = 7'b0011000;
	  default
	  SSeg = 0;
	endcase
end

endmodule
