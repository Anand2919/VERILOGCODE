// D Flip-Flop
module d_ff (
    input wire d,     // Data input
    input wire clk,   // Clock input
    input wire rst,   // Reset input (active high)
    output reg q     // Output
);

    always @(posedge clk or posedge rst) begin
        if (rst)       // Synchronous reset
            q <= 1'b0;
        else
            q <= d;    // Data input is stored on the rising edge of the clock
    end

endmodule

