/// @description Insert description here
// You can write your code in this editor
direction = obj_player_arrow.image_angle;
phy_speed_x = lengthdir_x(min(rush_speed , max_speed , 30 + max_speed - max_speed * image_xscale / 1.2) , direction);
phy_speed_y = lengthdir_y(min(rush_speed , max_speed , 30 + max_speed - max_speed * image_xscale / 1.2) , direction);
rush_speed = 0;
sprite_index = spr_player_Idle;
image_speed = 15;

