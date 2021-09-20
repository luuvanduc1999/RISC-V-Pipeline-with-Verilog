module test_branchcomp;
  reg [31:0] rs1, rs2;
  reg BrUn;
  wire BrLt, BrEq;
  
branch_comp dut (.rs1(rs1), .rs2(rs2), .BrUn(BrUn), .BrLt(BrLt), .BrEq(BrEq));

initial begin
  rs1=32'h80000000;
  rs2=32'h80000000;
  BrUn=1;
  #300;
  $display("BrLt= %b, BrEq= %b", BrLt, BrEq);
  rs1=32'h80000000;
  rs2=32'h80000001;
  BrUn=1;
  #300;
  
  $display("BrLt= %b, BrEq= %b", BrLt, BrEq);
  BrUn=0;
  rs1=32'h80000001;
  rs2=32'h80000000;
  #300;
  $display("BrLt= %b, BrEq= %b", BrLt, BrEq);
  BrUn=0;
  rs1=32'h80000000;
  rs2=32'h80000001;
  
  
end
endmodule