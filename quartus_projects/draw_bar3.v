module draw_bar3 (
	ipixel_x,
	ipixel_y,
	obar_RGB1,
	obar_on1,
);

input [9:0]ipixel_x, ipixel_y;
output [9:0]obar_RGB1;
output obar_on1;


localparam BAR_HEIGHT1 = 50, BAR_WIDTH1 = 40;
localparam BAR_X1_S = 400; // start x coordinate
localparam BAR_Y1_S = 150; // start y coordinate

assign obar_on1 = (BAR_X1_S < ipixel_x && ipixel_x < BAR_X1_S + BAR_WIDTH1) &&
						(BAR_Y1_S < ipixel_y && ipixel_y < BAR_Y1_S + BAR_HEIGHT1);

assign obar_RGB1 = 10'b0;


endmodule 