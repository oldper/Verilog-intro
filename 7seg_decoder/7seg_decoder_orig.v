module led7seg(x, a_to_g);

input  wire [3:0] x;
output reg  [6:0] a_to_g;

always @(*)
    case(x)
        4'b0000 : a_to_g<=7'b0000001;    //Display 0
        4'b0001 : a_to_g<=7'b1001111;    //Display 1
        4'b0010 : a_to_g<=7'b0010010;    //Display 2
        4'b0011 : a_to_g<=7'b0000110;    //Display 3
        4'b0100 : a_to_g<=7'b1001100;    //Display 4
        4'b0101 : a_to_g<=7'b0100100;    //Display 5
        4'b0110 : a_to_g<=7'b0100000;    //Display 6
        4'b0111 : a_to_g<=7'b0001111;    //Display 7
        4'b1000 : a_to_g<=7'b0000000;    //Display 8
        4'b1001 : a_to_g<=7'b0001100;    //Display 9
        4'b1010 : a_to_g<=7'b0001000;    //Display A
        4'b1011 : a_to_g<=7'b1100000;    //Display b
        4'b1100 : a_to_g<=7'b0110001;    //Display C
        4'b1101 : a_to_g<=7'b1000010;    //Display d
        4'b1110 : a_to_g<=7'b0110000;    //Display E
        4'b1111 : a_to_g<=7'b0111000;    //Display F
        
    endcase

endmodule