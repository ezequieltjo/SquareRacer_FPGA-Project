module draw_bar (
	ipixel_x,
	ipixel_y,
	obar_RGB,
	obar_on,
	
);

input [9:0]ipixel_x, ipixel_y;
output [9:0]obar_RGB;
output obar_on;


localparam BAR_HEIGHT = 50, BAR_WIDTH = 80;
localparam BAR_X_S = 110; // start x coordinate
localparam BAR_Y_S = 55; // start y coordinate

assign obar_on = (BAR_X_S < ipixel_x && ipixel_x < BAR_X_S + BAR_WIDTH) &&
						(BAR_Y_S < ipixel_y && ipixel_y < BAR_Y_S + BAR_HEIGHT);

assign obar_RGB = 10'b0000000000;


endmodule 