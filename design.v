module count(
  input clk,
  input rstn,
  input mode,
  output reg [3:0]out
);
  
  
  always@(posedge clk)
    begin 
    if(rstn)
      out<=0;
  
  else 
    begin 
      if(mode)
        out<=out-1;
      else 
        out<=out+1;
    end 
  end 
endmodule  
