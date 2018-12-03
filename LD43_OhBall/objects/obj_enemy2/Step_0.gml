/// @description Insert description here
// You can write your code in this editor
image_xscale = lerp(image_xscale , 0.6 + (hp / max_hp) , 0.3);
image_yscale = lerp(image_yscale , 0.6 + (hp / max_hp) , 0.3);
mvoe_speed = 5 + max_speed - max_speed * image_xscale / 1.2;
damage = hp;

if hp <= 0 {
	phy_active = false;
	image_xscale = lerp(image_xscale , 0 , 0.3);
	image_yscale = lerp(image_yscale , 0 , 0.3);
	if image_xscale < 0.6
		instance_destroy();
}

target = obj_player;
if instance_exists(target) {
	var move_dir = point_direction(x, y, target.x , target.y);
	phy_speed_x = lerp(phy_speed_x , lengthdir_x(mvoe_speed , move_dir) , 0.2);
	phy_speed_y = lerp(phy_speed_y , lengthdir_y(mvoe_speed , move_dir) , 0.2);
}
