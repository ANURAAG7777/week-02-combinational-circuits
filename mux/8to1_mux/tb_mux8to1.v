module tb_mux8to1;

    reg [7:0] tb_in_data;
    reg [2:0] tb_sel;
    wire      tb_y;

    integer i;
    reg expected_y;

    // Instantiate the Design
    mux8to1 uut (
        .in_data(tb_in_data),
        .sel(tb_sel),
        .y(tb_y)
    );

    initial begin
        $display("Starting Randomized Test for 8:1 Mux...");

        // We run exactly 100 tests. 
        for (i = 0; i < 100; i = i + 1) begin
            
            
            tb_in_data = $random;
            tb_sel     = $random;

            #10; // delay

            
            expected_y = (tb_in_data >> tb_sel) & 1'b1;

            // THE AUTOMATED CHECKER
            if (tb_y == expected_y) begin
                $display("[PASS] Test %0d | sel=%0d, data=%b | Got y=%b", i, tb_sel, tb_in_data, tb_y);
            end else begin
                $display("[FAIL] Test %0d | sel=%0d, data=%b | Expected %b, got %b", i, tb_sel, tb_in_data, expected_y, tb_y);
                $stop; // If a randomized test fails, kill the simulation immediately to investigate.
            end

        end

        $display("100 Randomized Tests Completed Successfully.");
        $stop;
    end

endmodule