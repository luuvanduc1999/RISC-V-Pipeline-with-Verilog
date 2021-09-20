module test_alu;
  reg [31:0] in1, in2;
  reg [3:0] alu_sel;
  wire [31:0] alu_out;
  
  alu dut (.in1(in1), .in2(in2), .alu_sel(alu_sel), .alu_out(alu_out));
  
initial begin
 alu_sel= 4'b0000;
  in1= 32'h0000000a;
  in2= 32'h0000000a;
  #100;
  alu_sel= 4'b0001;
  #100;
  alu_sel= 4'b0010;
  #100;
  alu_sel= 4'b0011;
  #100;
  alu_sel=4'b0110;
  #100;
  alu_sel=4'b0111;
  #100;
  alu_sel=4'b0101;
  #100;
  alu_sel=4'b1000;
  #100;
  alu_sel=4'b1001;

  #100;
  $display("alu_out=%h", alu_out);
end
endmodule