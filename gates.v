module gates (  input a, b,
                output c, d, e, f, g, h);

	and (c, a, b); 	// c is the output, a and b are inputs
	or  (d, a, b);	// d is the output, a and b are inputs
	xor (e, a, b); 	// e is the output, a and b are inputs
        nand (f, a, b); // c is the output, a and b are inputs
	nor  (g, a, b);	// d is the output, a and b are inputs
	xnor (h, a, b); // e is the output, a and b are inputs
endmodule

module tb;
	reg a, b;
	wire c, d, e, f, g, h;
	integer i;

	gates u0 ( .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h));

	initial begin
		{a, b} = 0;

              $monitor ("[T=%0t a=%0b b=%0b c(and)=%0b d(or)=%0b e(xor)=%0b f(nand)=%0b g(nor)=%0b h(xnor)=%0b", $time, a, b, c, d, e, f, g, h);

		for (i = 0; i < 10; i = i+1) begin
			#1 	a <= $random;
				b <= $random;
		end
	end
endmodule
