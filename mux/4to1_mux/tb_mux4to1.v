module tb_mux4to1;

    reg tb_a;
    reg tb_b;
    reg tb_c;
    reg tb_d;
    reg [1:0] tb_sel; 
    
    wire tb_y;

    integer i;
    reg expected_y; 

    
    mux4to1 uut (
        .a(tb_a),
        .b(tb_b),
        .c(tb_c),
        .d(tb_d),
        .sel(tb_sel),
        .y(tb_y)
    );

    initial begin
        $display("Starting Exhaustive Test for 4:1 Mux (64 Combinations)...");

        
        for (i = 0; i < 64; i = i + 1) begin
            
            
            tb_a = i[0];
            tb_b = i[1];
            tb_c = i[2];
            tb_d = i[3];
            
            tb_sel = i[5:4]; 

            #10; 
             
            if (tb_sel == 2'b00) begin
                expected_y = tb_a;
            end else if (tb_sel == 2'b01) begin
                expected_y = tb_b;
            end else if (tb_sel == 2'b10) begin
                expected_y = tb_c;
            end else if (tb_sel == 2'b11) begin
                expected_y = tb_d;
            end

            
            if (tb_y == expected_y) begin
                $display("[PASS] sel=%b | d=%b c=%b b=%b a=%b | Got y=%b", tb_sel, tb_d, tb_c, tb_b, tb_a, tb_y);
            end else begin
                $display("[FAIL] sel=%b | d=%b c=%b b=%b a=%b | Expected %b, got %b", tb_sel, tb_d, tb_c, tb_b, tb_a, expected_y, tb_y);
            end

        end

        $display("4:1 Mux Simulation Complete.");
        $stop;
    end

endmodule 
