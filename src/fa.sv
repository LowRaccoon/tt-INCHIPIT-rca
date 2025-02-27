//  Module: fa
//

module fa_module
    (
        input logic a,
        input logic b,
        input logic cin,
        output logic y,
        output logic cout
    );

    assign y = a ^ b ^ cin;

    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule: fa_module
