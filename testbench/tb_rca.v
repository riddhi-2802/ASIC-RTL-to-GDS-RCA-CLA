`timescale 1ns/1ps

module tb_rca;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

rca_4bit DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("rca_wave.vcd");
    $dumpvars(0, tb_rca);
    $monitor("A=%b B=%b Cin=%b Sum=%b Cout=%b",
          A,B,Cin,Sum,Cout);
          

    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #10;

    A = 4'b0001;
    B = 4'b0001;
    Cin = 0;
    #10;

    A = 4'b0111;
    B = 4'b1000;
    Cin = 0;
    #10;

    A = 4'b1111;
    B = 4'b1111;
    Cin = 0;
    #10;

    $finish;

end

endmodule