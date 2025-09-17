module countb();
  
  reg clk;
  reg rstn;
  reg mode;
  wire [3:0]out;
  
  
count dut(.clk(clk), .rstn(rstn), .mode(mode), .out(out));
  
  initial 
    begin 
      clk<=0;
      rstn<=1;
      mode<=0;
    end
  
  always #5 clk =~clk;
  
  initial 
    begin 
      #5
      rstn<=0;
      #25
      mode<=1'b1;
    end 
  
 initial 
   begin 
     $dumpfile("ump.vcd");
     $dumpvars();
     #200 $finish;
   end 
endmodule 
      
