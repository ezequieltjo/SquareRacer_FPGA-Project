module draw_wall4 (	// SEGUNDA LINHA
	ipixel_y,
	owall_RGB4,
	owall_on4
);

input [9:0]ipixel_y;
output [9:0]owall_RGB4;
output owall_on4;

localparam WALL_Y_S4 = 260; // start y coordinate
localparam WALL_HEIGHT4 = 10;

assign owall_RGB4 = 10'b0000000000;

assign owall_on4 = (WALL_Y_S4 < ipixel_y && ipixel_y < WALL_Y_S4 + WALL_HEIGHT4);

endmodule 