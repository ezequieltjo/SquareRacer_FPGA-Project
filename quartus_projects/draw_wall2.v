module draw_wall2 ( // SEGUNDA COLUNA
	ipixel_x,
	owall_RGB1,
	owall_on1
);

input [9:0]ipixel_x;
output [9:0]owall_RGB1;
output owall_on1;

localparam WALL_X_S1 = 500; // start x coordinate
localparam WALL_WIDTH1 = 10;

assign owall_RGB1 = 10'b0000000000;

assign owall_on1 = (WALL_X_S1 < ipixel_x  && ipixel_x < WALL_X_S1 + WALL_WIDTH1);

endmodule 