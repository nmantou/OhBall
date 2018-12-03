/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font0);
draw_set_color(c_black);
if hp > 0
	draw_text(x - 10 , y - 80 - image_xscale * 80  , string(hp));