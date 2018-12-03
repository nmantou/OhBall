/// @description Insert description here
// You can write your code in this editor
//image_angle = image_angle - 0.5 * (window_mouse_get_x()- pre_mouse_x);
//image_angle = image_angle + 0.5 * (window_mouse_get_y() - pre_mouse_y);
//pre_mouse_x = window_mouse_get_x();
//pre_mouse_y = window_mouse_get_y();
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;
