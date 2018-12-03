/// @description Insert description here
// You can write your code in this editor
phy_speed_x = lerp(phy_speed_x , 0 , 0.05);
phy_speed_y = lerp(phy_speed_y , 0 , 0.05);
if phy_speed < 20 {
	flag_get = true;
}

if flag_des {
	phy_active = false;
	phy_speed_x = 0;
	phy_speed_y = 0;
	if instance_exists(target_get) {
		phy_position_x = lerp(phy_position_x , target_get.x , 0.6);
		phy_position_y = lerp(phy_position_y , target_get.y , 0.6);
	}
	image_xscale = lerp(image_xscale , 0 , 0.1);
	image_yscale = lerp(image_yscale , 0 , 0.1);
	if image_xscale < 0.2 
		instance_destroy();
}
