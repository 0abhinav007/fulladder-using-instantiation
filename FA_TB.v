`timescale 1ns / 1ps
module fulladder_tb( );
 reg A,B,C;
 wire SUM,CARRY;
 fulladder dut(.s(SUM),.c(CARRY),.x(A),.y(B),.z(C));
  initial begin
        A=1'b0; B=1'b0; C=1'b0;
        #3
        A=1'b0; B=1'b0; C=1'b1;
        #3
        A=1'b0; B=1'b1; C=1'b0;
        #3
        A=1'b0; B=1'b1; C=1'b1;
        #3
        A=1'b1; B=1'b0; C=1'b0;
        #3
        A=1'b1; B=1'b0; C=1'b1;
        #3
        A=1'b1; B=1'b1; C=1'b0;
        #3
        A=1'b1; B=1'b1; C=1'b1;
        #3
        $stop;
    end
endmodule