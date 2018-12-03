/// @description Insert description here
// You can write your code in this editor
phy_speed_x = lerp(phy_speed_x , 0 , 0.05);
phy_speed_y = lerp(phy_speed_y , 0 , 0.05);
if phy_speed < 20 {
	flag_attack = false;
	flag_get = true;
	sprite_index = spr_player_point;
}
if flag_attack {
	instance_create_layer(x , y , "Instances" , obj_player_point_eff);
	sprite_index = spr_player_point_rush;
}

if flag_des {
	phy_active = false;
	phy_speed_x = 0;
	phy_speed_y = 0;
	phy_position_x = lerp(phy_position_x , obj_player.x , 0.6);
	phy_position_y = lerp(phy_position_y , obj_player.y , 0.6);
	image_xscale = lerp(image_xscale , 0 , 0.1);
	image_yscale = lerp(image_yscale , 0 , 0.1);
	if image_xscale < 0.2 
		instance_destroy();
}
