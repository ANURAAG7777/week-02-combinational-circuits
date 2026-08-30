module mux2to1 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);

    // The '?' is a conditional operator. 
    // It asks: "Is sel true (1)?" 
    // If yes, y gets b. If no (0), y gets a.
    assign y = sel ? b : a;

endmodule







