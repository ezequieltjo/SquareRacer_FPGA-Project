module draw_wall5 (	// TERCEIRA LINHA
	ipixel_y,
	owall_RGB5,
	owall_on5
);

input [9:0]ipixel_y;
output [9:0]owall_RGB5;
output owall_on5;

localparam WALL_Y_S5 = 390; // start y coordinate
localparam WALL_HEIGHT5 = 10;

assign owall_RGB5 = 10'b0000000000;

assign owall_on5 = (WALL_Y_S5 < ipixel_y && ipixel_y < WALL_Y_S5 + WALL_HEIGHT5);

endmodule 