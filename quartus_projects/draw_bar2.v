module draw_bar2 (
	ipixel_x,
	ipixel_y,
	obar_2RGB,
	obar_2on,

);

input [9:0]ipixel_x, ipixel_y;
output [9:0]obar_2RGB;
output obar_2on;


localparam BAR_2HEIGHT = 50, BAR_2WIDTH = 80;
localparam BAR_X2_S = 320; // start x coordinate
localparam BAR_Y2_S = 55; // start y coordinate

assign obar_2on = (BAR_X2_S < ipixel_x && ipixel_x < BAR_X2_S + BAR_2WIDTH) &&
						(BAR_Y2_S < ipixel_y && ipixel_y < BAR_Y2_S + BAR_2HEIGHT);

assign obar_2RGB = 10'b0;


endmodule 