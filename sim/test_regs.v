module test_regs();             
             reg clk, rst_n;
             reg [4:0] rs1, rs2, rd;
             reg [31:0] wb;
             reg RegWen;
             wire [31:0] dataA, dataB;
             localparam T = 20;
             integer i;
             
             regs DUT(.clk(clk), .rst_n(rst_n), .rs1(rs1), .rs2(rs2), .rd(rd), .wb(wb), .RegWen(RegWen), .dataA(dataA), .dataB(dataB));
             
             always
             begin
                clk = 1'b1;
                #(T/2);
                clk = 1'b0;
                #(T/2);
             end
             
             initial
             begin
                rst_n = 1'b0;
                #(T);
                rst_n = 1'b1;
             end
             
             initial
             begin
                 RegWen = 1'b0;
                 rd = 1'b0;
                 wb = 1'b0;
                // kt doc
                for(i = 0; i < 32; i = i + 1)
                begin
                   rs1 = i;
                   rs2 = i;
                   #20;
                end
                wb = 32'b1;
                #200;
                RegWen = 1'b1;
                
               
                for(i = 0; i < 32; i = i + 1)
                begin
                   rd = i;
                   
                   #20;
                end
             end
             
             
           
             
endmodule
                
             
