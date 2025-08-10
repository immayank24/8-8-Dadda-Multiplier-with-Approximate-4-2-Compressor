`timescale 1ns / 1ps

module Dadda_Multiplier_tb();
integer i;
integer s;
reg [7:0]a;
reg [7:0]b;
wire [15:0]y;


approx_multiplier dut(.a(a),.b(b),.y(y));
initial
begin
s=$fopen("FPFM.txt","w");
   for(i=0;i<65536;i=i+1)
    begin
    {a,b}=i;
    #100;
    $fdisplay(s,y);
    end
    #200 $fclose(s);
$finish;

end
endmodule