//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for Half Adder
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_HA();
// inputs to the DUT
    reg A;
    reg B;
// outputs from the DUT
    wire S;
    wire Co;

half_adder DUT ( .A(A), .B(B), .S(S), .Co(Co) );

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "A = %b, B = %b, S = %b, Co = %b", A, B, S, Co);
    end

always
    begin
        A   = 0;
        B   = 0;
        #2;
        A   = 1;
        #2;
        A   = 0;
        B   = 1;
        #2;
        A   = 1;
        #2;

        $finish;

    end
endmodule
