`timescale 1ns / 1ps
module tb_led_7seg_decoder;

	// Inputs
	reg [3:0] x;

	// Outputs
	wire [6:0] a_to_g;
    wire [6:0] a_to_g2;


	// This is your uut.
    seg7_decoder uut2(
        .in(x),
        .a_to_g(a_to_g2)
    );


	// Instantiate the Unit Under Test (UUT)
	// leg7seg(x(input), a_to_g(output)))
	// this is the benchmark (original uut)
	led7seg uut (
		.x(x), 
		.a_to_g(a_to_g)
	);

	initial begin
		$dumpfile("tb_led_7seg_decoder.vcd");
		$dumpvars;
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#10;
    	#160 $finish; 
		// Add stimulus here
	
	end

	always @(a_to_g) begin
		// $monitor("benchmark Input:%b, Output:%b\nyour Input:%b, Output:%b", x, a_to_g, x, a_to_g2);
        // if you need print one by one uncomment above and comment below.
        if ( a_to_g == a_to_g2 ) $display("Correct");
        else $display("Error! x=%b \nyour output:%b\nbenchmark:%b\n", x, a_to_g, a_to_g2);

	end


// 0000
// 0001
// 0010

	always #10 x[0] = ~x[0];
	always #20 x[1] = ~x[1];
	always #40 x[2] = ~x[2];
	always #80 x[3] = ~x[3];
	
	
      
endmodule