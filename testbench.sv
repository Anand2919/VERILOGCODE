
// Test Bench for D Flip-Flop
module d_ff_tb;

    reg d;        // Data input
    reg clk;      // Clock input
    reg rst;      // Reset input
    wire q;       // Output

    // Instantiate the D Flip-Flop
    d_ff uut (
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation
    always begin
        clk = 0;
        #5;       // Half clock period delay
        clk = 1;
        #5;       // Half clock period delay
    end

    // Test sequence
    initial begin
        // Initialize inputs
        d = 0;
        rst = 0;
        
        // Apply reset and wait for a few clock cycles
        rst = 1;
        #10;
        rst = 0;
        
        // Test 1: D Flip-Flop stores data when not reset
        d = 1;
        #10;  // Wait for a clock cycle
        d = 0;
        #10;  // Wait for a clock cycle
        
        // Test 2: Reset operation
        rst = 1;
        #10;
        rst = 0;
        
        // Test 3: D Flip-Flop stores data after reset
        d = 1;
        #10;  // Wait for a clock cycle
        d = 0;
        #10;  // Wait for a clock cycle


        
        // End simulation
        $finish;
    end
        initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  #10000 
  $finish;
end

endmodule