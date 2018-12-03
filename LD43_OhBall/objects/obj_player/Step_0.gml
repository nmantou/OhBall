/// @description Insert description here
// You can write your code in this editor
phy_speed_x = lerp(phy_speed_x , 0 , 0.05);
phy_speed_y = lerp(phy_speed_y , 0 , 0.05);
if hp > 0 {
	image_xscale = lerp(image_xscale , 0.2 + (hp / max_hp) , 0.3);
	image_yscale = lerp(image_yscale , 0.2 + (hp / max_hp) , 0.3);
}

else {
	phy_active = false;
	image_xscale = lerp(image_xscale , 0 , 0.1);
	image_yscale = lerp(image_yscale , 0 , 0.1);
	if flag_death == false {
		flag_death = true;
		alarm[2] = room_speed;
	}
}

if hp > 5
	damage = hp;
else 
	damage = hp - 1;

if phy_speed > 20 {
	flag_rush = true;
	instance_create_layer(x , y , "Instances" , obj_player_eff);
}

else 
	flag_rush = false;