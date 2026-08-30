module mux8to1 (
    
    input  wire [7:0] in_data, 
    input  wire [2:0] sel,     
    output reg        y
);

    always @(*) begin
        
        y = in_data[sel]; 
    end

endmodule


