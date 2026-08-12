module full_subtractor_tb;

reg A, B, Bin;
wire Difference, Bout;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Bout(Bout)
);

initial begin

    $monitor("A=%b B=%b Bin=%b | Difference=%b Bout=%b",
              A, B, Bin, Difference, Bout);

    A=0; B=0; Bin=0;
    #10 A=0; B=0; Bin=1;
    #10 A=0; B=1; Bin=0;
    #10 A=0; B=1; Bin=1;
    #10 A=1; B=0; Bin=0;
    #10 A=1; B=0; Bin=1;
    #10 A=1; B=1; Bin=0;
    #10 A=1; B=1; Bin=1;

    #10 $finish;

end

endmodule