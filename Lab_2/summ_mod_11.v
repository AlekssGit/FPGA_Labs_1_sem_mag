module summ_mod_11(
	input i_clk,
	input reset,
	output [6:0] lcd,
	output OF,
	
	output [3:0] out_cnt,
	output test_clk
);

logic clk;
//logic [3:0] out_cnt;

generator  #(50) gen (i_clk, clk);
assign test_clk = clk;

semisegment sem (.number(out_cnt), .result(lcd));

enum int unsigned {s_null, s_first, s_second, s_third, s_fourth, s_fifth, s_sixth, s_seventh, s_eighth, s_ninth, s_tenth } state;

always @(posedge clk)
begin
	if(reset == 0)
	begin
		state = s_null;
		out_cnt = 4'h0;
		
		OF = 1'b1;
	end
	else
	begin
		case(state)
			s_null:
			begin
				state = s_first;
				out_cnt = 4'h1;
				
				OF = 1'b0;
			end
			
			s_first:
			begin
				state = s_second;
				out_cnt = 4'h2;
			end
			
			s_second:
			begin
				state = s_third;
				out_cnt = 4'h3;
			end
			
			s_third:
			begin
				state = s_fourth;
				out_cnt = 4'h4;
			end
			
			s_fourth:
			begin
				state = s_fifth;
				out_cnt = 4'h5;
			end
			
			s_fifth:
			begin
				state = s_sixth;
				out_cnt = 4'h6;
			end
			
			s_sixth:
			begin
				state = s_seventh;
				out_cnt = 4'h7;
			end
			
			s_seventh:
			begin
				state = s_eighth;
				out_cnt = 4'h8;
			end
			
			s_eighth:
			begin
				state = s_ninth;
				out_cnt = 4'h9;
			end
			
			s_ninth:
			begin
				state = s_tenth;
				out_cnt = 4'hA;
			end
			
			s_tenth:
			begin
				state = s_null;
				out_cnt = 4'h0;
				
				OF = 1'b1;
			end
		endcase	
	end
end


endmodule