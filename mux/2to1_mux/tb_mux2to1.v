module tb_mux2to1;

    reg tb_a;
    reg tb_b;
    reg tb_sel;
    wire tb_y;

    // NEW: We need an integer to act as our loop counter.
    integer i;
    
    // NEW: A register to hold our "Golden Predictor" value.
    reg expected_y; 

    // Instantiate the design (Unit Under Test)
    mux2to1 uut (
        .a(tb_a),
        .b(tb_b),
        .sel(tb_sel),
        .y(tb_y)
    );

    initial begin
        $display("Starting Exhaustive Test for 2:1 Mux...");

        // THE FOR LOOP
        // i starts at 0. As long as i is less than 8, run the loop. 
        // After each run, add 1 to i.
        for (i = 0; i < 8; i = i + 1) begin
            
            // BIT EXTRACTION
            // 'i' is a 32-bit integer. We strip off the lowest 3 bits to drive our inputs.
            // i[0] is the least significant bit.
            tb_a   = i[0]; 
            tb_b   = i[1]; 
            tb_sel = i[2]; 

            #10; // Wait 10 time units for the physical circuit to react to the new inputs.

            // THE PREDICTOR
            // We calculate what the answer SHOULD be inside the testbench.
            if (tb_sel == 1'b0) begin
                expected_y = tb_a;
            end else begin
                expected_y = tb_b;
            end

            // THE AUTOMATED CHECKER
            // We compare the silicon output (tb_y) against our math (expected_y).
            if (tb_y == expected_y) begin
                // %b prints binary. This will log every single passing combination.
                $display("[PASS] sel=%b, b=%b, a=%b | Got y=%b", tb_sel, tb_b, tb_a, tb_y);
            end else begin
                $display("[FAIL] sel=%b, b=%b, a=%b | Expected %b, got %b", tb_sel, tb_b, tb_a, expected_y, tb_y);
            end

        end
        
        $display("Exhaustive Simulation Complete.");
        $stop;
    end

endmodule