module muxW (input [31:0] mem, alu, pc_add4,
              input [1:0] WB_sel,
              output reg [31:0] wb);
always @(WB_sel, mem, alu, pc_add4) begin 
  case (WB_sel)
    2'b00: wb= mem;//write back gia tri trong mem vao bo nho thanh ghi dataD
    2'b01: wb= alu;//write back gia tri ket qua dau ra ALUout vao thanh ghi dataD
    2'b10: wb= pc_add4;//write back gia tri PC+4 vao thanh ghi dataD
    default: wb= 32'hxxxxxxxx;
  endcase
end
endmodule