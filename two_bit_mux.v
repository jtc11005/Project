// two_bit_mux

module two_bit_mux (
	input wire [1:0]control,
	input wire [31:0]zero_zero,
	input wire [31:0]zero_one,
	input wire [31:0]one_zero,
	input wire [31:0]one_one,
	
	output reg [31:0]result);
	
	integer sel = control;
	
	always
		begin				
			case (sel) 
			
			0:
				begin
					result = zero_zero;
				end
			1:
				begin
					result = zero_one;
				end
			2:
				begin
					result = one_zero;
				end
			3:
				begin
					result = one_one;
				end		
			endcase
		end
endmodule
	