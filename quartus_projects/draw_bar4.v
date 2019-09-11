module draw_bar4 (
	ipixel_x,
	ipixel_y,
	obar_RGB4,
	obar_on4,
);

input [9:0]ipixel_x, ipixel_y;
output [9:0]obar_RGB4;
output obar_on4;

localparam BAR_HEIGHT4 = 50, BAR_WIDTH4 = 40;
localparam BAR_X_S4 = 120; // start x coordinate
localparam BAR_Y_S4 = 150; // start y coordinate

assign obar_on4 = (BAR_X_S4 < ipixel_x && ipixel_x < BAR_X_S4 + BAR_WIDTH4) &&
						(BAR_Y_S4 < ipixel_y && ipixel_y < BAR_Y_S4 + BAR_HEIGHT4);

assign obar_RGB4 = 10'b0;

endmodule 