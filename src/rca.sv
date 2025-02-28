//  Module: rca
//
module rca
    (
        input logic [2:0] a,
        input logic [2:0] b,
        input logic cin,
        output logic [2:0] sum,
        output logic cout
    );

    // Internals
    logic [2:0] carry;

    genvar i;
    generate;
        for(i=0; i< 3; i=i+1) begin: gen_rca 
            if (i == 0) begin: gen_0
                fa_module u(
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cin),
                    .y(sum[i]),
                    .cout(carry[i])
                );
            end else begin: gen_gt0
                    .a(a[i]),
                    .b(b[i]),
                .cin(carry),
                    .y(sum[i]),
                    .cout(carry[i])

            end
        end
    endgenerate

    assign cout = carry[2];

endmodule: rca
