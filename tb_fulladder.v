`timescale 1ps/1ps // 放在module外面
module tb_fulladder();
    reg a, b, cin;
    wire s, cout;
    Full_adder fa(.A(a), .B(b), .Cin(cin), .Sum(s), .Cout(cout));
    
    initial begin
        a = 1'b0;
        b = 1'b0;
        cin = 1'b0;
        #80 $finish;
    end
    
    initial begin
        $dumpfile("tb_fulladder.vcd");
        $dumpvars;
    end
    
    always #10 a = ~a;
    always #20 b = ~b;
    always #40 cin = ~cin;
    
    
    always @(*) begin
        $monitor("a=%b, b=%b, cin=%b   output:s=%b, cout=%b", a, b, cin, s, cout);
    end
endmodule