
  
module test;
  reg clk, rst_n;
////////////////////////////DATA_PATH///////////////////////////////
/*wire [31:0] pc;
assign pc= dut.PC.pc_out;

wire [31:0] inst;
assign inst= dut.inst;

wire [4:0] rs1, rs2, rd;
assign rs1= dut.inst[19:15];
assign rs2= dut.inst[24:20];
assign rd= dut.inst[11:7];

wire [31:0] dataA, dataB, dataD;
assign dataA= dut.dataA;
assign dataB= dut.dataB;
assign dataD= dut.regs.dataD;

wire A_sel, B_sel;
assign A_sel= dut.A_sel;
assign B_sel= dut.B_sel;

wire [3:0] alu_sel;
assign alu_sel= dut.alu_sel;

wire [31:0] imm_out;
assign imm_out= dut.imm_out;

wire BrUn, BrLt, BrEq, lt1, lt2, eq1, eq2;
assign BrUn= dut.BrUn;
assign BrLt= dut.BrLt;
assign BrEq= dut.BrEq;
assign lt1= dut.alu.lt1;
assign lt2= dut.alu.lt2;
assign eq1= dut.alu.eq1;
assign eq2= dut.alu.eq2;

wire [31:0] muxA_out, muxB_out;
assign muxA_out= dut.muxA_out;
assign muxB_out= dut.muxB_out;

wire [31:0] alu_out, in1, in2;
assign in1= dut.alu.in1;
assign in2= dut.alu.in2;
assign alu_out= dut.alu_out;


wire [31:0] dataR;
assign dataR= dut.dataR;

wire [31:0] wb;
assign wb= dut.wb;
/////////////////////////////////Controller//////////////////////////////
wire [1:0] WBsel;
assign WBsel= dut.WBsel;

wire RegWen;
assign RegWen= dut.RegWen;

wire MemRW;
assign MemRW= dut.MemRW;
/////////////////////////////////REGs////////////////////////////////////
wire [31:0] reg_0, reg_1, reg_2, reg_3, reg_4, reg_5, reg_6, reg_7, 
           reg_8, reg_9, reg_10, reg_11, reg_12, reg_13, reg_14, reg_15,
           reg_16, reg_17, reg_18, reg_19, reg_20, reg_21, reg_22, reg_23, 
           reg_24, reg_25, reg_26, reg_27, reg_28, reg_29, reg_30, reg_31;
assign reg_0= dut.regs.reg_0;
assign reg_1= dut.regs.reg_1;  
assign reg_2= dut.regs.reg_2;
assign reg_3= dut.regs.reg_3; 
assign reg_4= dut.regs.reg_4;
assign reg_5= dut.regs.reg_5;  
assign reg_6= dut.regs.reg_6;
assign reg_7= dut.regs.reg_7; 
assign reg_8= dut.regs.reg_8;
assign reg_9= dut.regs.reg_9;  
assign reg_10= dut.regs.reg_10;
assign reg_11= dut.regs.reg_11; 
assign reg_12= dut.regs.reg_12;
assign reg_13= dut.regs.reg_13;  
assign reg_14= dut.regs.reg_14;
assign reg_15= dut.regs.reg_15; 
assign reg_16= dut.regs.reg_16;
assign reg_17= dut.regs.reg_17;  
assign reg_18= dut.regs.reg_18;
assign reg_19= dut.regs.reg_19; 
assign reg_20= dut.regs.reg_20;
assign reg_21= dut.regs.reg_21;  
assign reg_22= dut.regs.reg_22;
assign reg_23= dut.regs.reg_23; 
assign reg_24= dut.regs.reg_24;
assign reg_25= dut.regs.reg_25;  
assign reg_26= dut.regs.reg_26;
assign reg_27= dut.regs.reg_27; 
assign reg_28= dut.regs.reg_28;
assign reg_29= dut.regs.reg_29;  
assign reg_30= dut.regs.reg_30;
assign reg_31= dut.regs.reg_31; 
/////////////////////////////////////////////////////
/////////////////////////////////REGs////////////////////////////////////
wire [31:0] DMEM_0, DMEM_1, DMEM_2, DMEM_3, DMEM_4, DMEM_5, DMEM_6, DMEM_7, 
           DMEM_8, DMEM_9, DMEM_10, DMEM_11, DMEM_12, DMEM_13, DMEM_14, DMEM_15,
           DMEM_16, DMEM_17, DMEM_18, DMEM_19, DMEM_20, DMEM_21, DMEM_22, DMEM_23, 
           DMEM_24, DMEM_25, DMEM_26, DMEM_27, DMEM_28, DMEM_29, DMEM_30, DMEM_31,
           DMEM_32, DMEM_33, DMEM_34, DMEM_35, DMEM_36, DMEM_37, DMEM_38, DMEM_39, 
           DMEM_40, DMEM_41, DMEM_42, DMEM_43, DMEM_44, DMEM_45, DMEM_46, DMEM_47,
           DMEM_48, DMEM_49, DMEM_50, DMEM_51, DMEM_52, DMEM_53, DMEM_54, DMEM_55, 
           DMEM_56, DMEM_57, DMEM_58, DMEM_59, DMEM_60, DMEM_61, DMEM_62, DMEM_63;
assign DMEM_0= dut.DMEM.DMEMi[0];
assign DMEM_1= dut.DMEM.DMEMi[4];  
assign DMEM_2= dut.DMEM.DMEMi[8];
assign DMEM_3= dut.DMEM.DMEMi[12]; 
assign DMEM_4= dut.DMEM.DMEMi[16];
assign DMEM_5= dut.DMEM.DMEMi[20];  
assign DMEM_6= dut.DMEM.DMEMi[24];
assign DMEM_7= dut.DMEM.DMEMi[28]; 
assign DMEM_8= dut.DMEM.DMEMi[32];
assign DMEM_9= dut.DMEM.DMEMi[36];  
assign DMEM_10= dut.DMEM.DMEMi[40];
assign DMEM_11= dut.DMEM.DMEMi[44]; 
assign DMEM_12= dut.DMEM.DMEMi[48];
assign DMEM_13= dut.DMEM.DMEMi[52];  
assign DMEM_14= dut.DMEM.DMEMi[56];
assign DMEM_15= dut.DMEM.DMEMi[60]; 
assign DMEM_16= dut.DMEM.DMEMi[64];
assign DMEM_17= dut.DMEM.DMEMi[68];  
assign DMEM_18= dut.DMEM.DMEMi[72];
assign DMEM_19= dut.DMEM.DMEMi[76]; 
assign DMEM_20= dut.DMEM.DMEMi[80];
assign DMEM_21= dut.DMEM.DMEMi[84];  
assign DMEM_22= dut.DMEM.DMEMi[88];
assign DMEM_23= dut.DMEM.DMEMi[92]; 
assign DMEM_24= dut.DMEM.DMEMi[96];
assign DMEM_25= dut.DMEM.DMEMi[100];  
assign DMEM_26= dut.DMEM.DMEMi[104];
assign DMEM_27= dut.DMEM.DMEMi[108]; 
assign DMEM_28= dut.DMEM.DMEMi[112];
assign DMEM_29= dut.DMEM.DMEMi[116];  
assign DMEM_30= dut.DMEM.DMEMi[120];
assign DMEM_31= dut.DMEM.DMEMi[124];
assign DMEM_32= dut.DMEM.DMEMi[128];
assign DMEM_33= dut.DMEM.DMEMi[132];  
assign DMEM_34= dut.DMEM.DMEMi[136];
assign DMEM_35= dut.DMEM.DMEMi[140]; 
assign DMEM_36= dut.DMEM.DMEMi[144];
assign DMEM_37= dut.DMEM.DMEMi[148];  
assign DMEM_38= dut.DMEM.DMEMi[152];
assign DMEM_39= dut.DMEM.DMEMi[156]; 
assign DMEM_40= dut.DMEM.DMEMi[160];
assign DMEM_41= dut.DMEM.DMEMi[164];  
assign DMEM_42= dut.DMEM.DMEMi[168];
assign DMEM_43= dut.DMEM.DMEMi[172]; 
assign DMEM_44= dut.DMEM.DMEMi[176];
assign DMEM_45= dut.DMEM.DMEMi[180];  
assign DMEM_46= dut.DMEM.DMEMi[184];
assign DMEM_47= dut.DMEM.DMEMi[188]; 
assign DMEM_48= dut.DMEM.DMEMi[192];
assign DMEM_49= dut.DMEM.DMEMi[196];  
assign DMEM_50= dut.DMEM.DMEMi[200];
assign DMEM_51= dut.DMEM.DMEMi[204]; 
assign DMEM_52= dut.DMEM.DMEMi[208];
assign DMEM_53= dut.DMEM.DMEMi[212];  
assign DMEM_54= dut.DMEM.DMEMi[216];
assign DMEM_55= dut.DMEM.DMEMi[220]; 
assign DMEM_56= dut.DMEM.DMEMi[224];
assign DMEM_57= dut.DMEM.DMEMi[228];  
assign DMEM_58= dut.DMEM.DMEMi[232];
assign DMEM_59= dut.DMEM.DMEMi[236]; 
assign DMEM_60= dut.DMEM.DMEMi[240];
assign DMEM_61= dut.DMEM.DMEMi[244];  
assign DMEM_62= dut.DMEM.DMEMi[248];
assign DMEM_63= dut.DMEM.DMEMi[252];
///////////////////////////////////////////////////// */
top dut (.clk(clk), .rst_n(rst_n));

initial begin
  clk=0;
  forever #10 clk= ~clk;
end

initial begin
  rst_n=0;
  #25;
  rst_n= ~rst_n;
 // $finish;
end
endmodule
