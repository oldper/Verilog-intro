module Full_adder( A, B, Cin, Sum, Cout );

    input A, B, Cin;
    output Sum, Cout;

    wire W1, W2, W3;

    assign W1 = A^B;
    assign W2 = W1&Cin;
    assign W3 = A&B;
    assign Sum = W1^Cin;
    assign Cout = W2|W3;

endmodule