module FIFO8x9(
  input clk, rst,
  input RdPtrClr, WrPtrClr, 
  input RdInc, WrInc,
  input [8:0] DataIn,
  output reg [8:0] DataOut,
  input rden, wren);
	
//signal declarations

	reg [8:0] fifo_array[7:0];
	reg [7:0] wrptr, rdptr;
	wire [7:0] wr_cnt, rd_cnt;
	reg [8:0]dmuxout;


always @(clk,rst,RdPtrClr,WrPtrClr,DataIn,rden,wren)
begin
 
if (rst==1)
begin 
wrptr<=000;
rdptr<=000;
DataOut<=000000000;
end
if (rst==0)
begin
if (wren==1)
	begin
	 fifo_array[wrptr]<=DataIn;
	 wrptr<=wrptr+001;
	end 
if (rden==1)
	begin
	 DataOut<=fifo_array[rdptr];
	rdptr<=rdptr+001;
	end
else if (rden==0)
begin
DataOut<=9'hz;
end
if (RdPtrClr==1)
  begin 
	rdptr<=000;
  end
if (WrPtrClr==1)
  begin 
	wrptr<=000;
  end
 //DataOut<=dmuxout;
end
end
endmodule
