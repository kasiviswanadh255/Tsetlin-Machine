module IM_INFERENCE(input [783:0] features,
        input [1567:0] exclude_state_1,exclude_state_2,exclude_state_3,exclude_state_4,
        exclude_state_5,exclude_state_6,exclude_state_7,exclude_state_8,exclude_state_9,exclude_state_10,
        exclude_state_11,exclude_state_12,exclude_state_13,exclude_state_14,exclude_state_15,exclude_state_16,
        exclude_state_17,exclude_state_18,exclude_state_19,exclude_state_20,
        output verdict
    );
    
    wire [19:0]clause_outputs;
    
    ClauseCalculation CC1 (features,exclude_state_1,clause_outputs[0]);
    ClauseCalculation CC2 (features,exclude_state_2,clause_outputs[1]);
    ClauseCalculation CC3 (features,exclude_state_3,clause_outputs[2]);
    ClauseCalculation CC4 (features,exclude_state_4,clause_outputs[3]);
    ClauseCalculation CC5 (features,exclude_state_5,clause_outputs[4]);
    ClauseCalculation CC6 (features,exclude_state_6,clause_outputs[5]);
    ClauseCalculation CC7 (features,exclude_state_7,clause_outputs[6]);
    ClauseCalculation CC8 (features,exclude_state_8,clause_outputs[7]);
    ClauseCalculation CC9 (features,exclude_state_9,clause_outputs[8]);
    ClauseCalculation CC10 (features,exclude_state_10,clause_outputs[9]);
    ClauseCalculation CC11 (features,exclude_state_11,clause_outputs[10]);
    ClauseCalculation CC12 (features,exclude_state_12,clause_outputs[11]);
    ClauseCalculation CC13 (features,exclude_state_13,clause_outputs[12]);
    ClauseCalculation CC14 (features,exclude_state_14,clause_outputs[13]);
    ClauseCalculation CC15 (features,exclude_state_15,clause_outputs[14]);
    ClauseCalculation CC16 (features,exclude_state_16,clause_outputs[15]);
    ClauseCalculation CC17 (features,exclude_state_17,clause_outputs[16]);
    ClauseCalculation CC18 (features,exclude_state_18,clause_outputs[17]);
    ClauseCalculation CC19 (features,exclude_state_19,clause_outputs[18]);
    ClauseCalculation CC20 (features,exclude_state_20,clause_outputs[19]);
    
    Sum_And_Threshold SAT(clause_outputs[9:0],clause_outputs[19:10],verdict);
    
endmodule
