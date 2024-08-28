`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 15:42:17
// Design Name: 
// Module Name: Sum_And_Threshold for XOR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 4 clauses will give their input to this module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sum_And_Threshold(
    input [9:0] pos_clause,
    input [9:0] neg_clause,
    output reg decision
    );
    
    reg [9:0] countp,countn;
    
    always@(pos_clause,neg_clause)
    begin        
        countp = pos_clause[0]+pos_clause[1]+pos_clause[2]+pos_clause[3]+pos_clause[4]+pos_clause[5]+pos_clause[6]+
                pos_clause[6]+pos_clause[7]+pos_clause[8]+pos_clause[9];
                
        countn = neg_clause[0]+neg_clause[1]+neg_clause[2]+neg_clause[3]+neg_clause[4]+neg_clause[5]+neg_clause[6]+
                neg_clause[6]+neg_clause[7]+neg_clause[8]+neg_clause[9];

        if (countp<countn)
            decision=0;
        else
            decision=1;
    end          
endmodule
