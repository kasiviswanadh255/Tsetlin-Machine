module ClauseCalculation(
    input [783:0] features,
    input [2*784-1:0] exclude_state,
    output clause
    );
    wire [2*784-1:0] literals;    
    assign literals={features,~features};
    assign clause = &(exclude_state | literals); 
endmodule
