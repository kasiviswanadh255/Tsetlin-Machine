
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2021 15:13:16
// Design Name: 
// Module Name: ClauseCalculation for XOR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module ClauseCalculation(
    input [783:0] features,
    input [2*784-1:0] exclude_state,
    output clause
    );
    wire [2*784-1:0] literals;    
    assign literals={features,~features};
    assign clause = &(exclude_state | literals); 
endmodule