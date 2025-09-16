module buffer_chain(
	input clk,

	input in0,
	input in1,
	input in2,
	input in3,

	output out0,
	output out1,
	output out2,
	output out3
);

	wire bef0, bef1, bef2, bef3;
	wire aft0, aft1, aft2, aft3;
	
	DFF_X1 ff1_0(.D(in0), .CK(clk), .Q(bef0));
	DFF_X1 ff1_1(.D(in1), .CK(clk), .Q(bef1));
	DFF_X1 ff1_2(.D(in2), .CK(clk), .Q(bef2));
	DFF_X1 ff1_3(.D(in3), .CK(clk), .Q(bef3));
	
	DFF_X1 ff2_0(.D(bef0), .CK(clk), .Q(aft0));
	DFF_X1 ff2_1(.D(bef1), .CK(clk), .Q(aft1));
	DFF_X1 ff2_2(.D(bef2), .CK(clk), .Q(aft2));
	DFF_X1 ff2_3(.D(bef3), .CK(clk), .Q(aft3));
	
	assign out0 = aft0;
	assign out1 = aft1;
	assign out2 = aft2;
	assign out3 = aft3;
endmodule

	
	
