/// @description Insert description here
// You can write your code in this editor
image_xscale = lerp(image_xscale , 0.2 + (hp / max_hp) , 0.3);
image_yscale = lerp(image_yscale , 0.2 + (hp / max_hp) , 0.3);
mvoe_speed = 1 + max_speed - max_speed * image_xscale / 1.2;
if hp > 5 
	damage = hp;
else 
	damage = hp - 1;

if hp <= 0 {
	phy_active = false;
	image_xscale = lerp(image_xscale , 0 , 0.3);
	image_yscale = lerp(image_yscale , 0 , 0.3);
	if image_xscale < 0.1
		instance_destroy();
}

if hp < obj_player.hp {
	phy_speed_x = lerp(phy_speed_x , 0 , 0.05);
	phy_speed_y = lerp(phy_speed_y , 0 , 0.05);
	if instance_exists(obj_point) {
		target = instance_nearest(x , y , obj_point);
	}
	
	else if !instance_exists(obj_point) && distance_to_object(obj_player) < 400 {
		var move_dir = point_direction(x, y, obj_player.x , obj_player.y) - 180;
		phy_speed_x = lerp(phy_speed_x , lengthdir_x(mvoe_speed , move_dir) , 0.2);
		phy_speed_y = lerp(phy_speed_y , lengthdir_y(mvoe_speed , move_dir) , 0.2);
	}
	
	if instance_exists(target) {
		var move_dir = point_direction(x, y, target.x , target.y);
		phy_speed_x = lerp(phy_speed_x , lengthdir_x(mvoe_speed , move_dir) , 0.2);
		phy_speed_y = lerp(phy_speed_y , lengthdir_y(mvoe_speed , move_dir) , 0.2);
	}
}

else {
	target = obj_player;
	if instance_exists(target) && distance_to_object(obj_player) > 450 {
		var move_dir = point_direction(x, y, target.x , target.y);
		phy_speed_x = lerp(phy_speed_x , lengthdir_x(mvoe_speed , move_dir) , 0.2);
		phy_speed_y = lerp(phy_speed_y , lengthdir_y(mvoe_speed , move_dir) , 0.2);
	}
	
	else if instance_exists(target) && distance_to_object(obj_player) < 300 {
		var move_dir = point_direction(x, y, target.x , target.y) - 180;
		phy_speed_x = lerp(phy_speed_x , lengthdir_x(mvoe_speed , move_dir) , 0.2);
		phy_speed_y = lerp(phy_speed_y , lengthdir_y(mvoe_speed , move_dir) , 0.2);
	}
}

if distance_to_object(obj_player) <= 450 && alarm[1] <= 0 {
	var shoot_dir = point_direction(x, y, obj_player.x , obj_player.y) ;
	var bullet = instance_create_layer(x + lengthdir_x(30 , shoot_dir) , y + lengthdir_x(30 , shoot_dir) , "Instances" , obj_enemy1_bullet);
	bullet.phy_speed_x = lengthdir_x(30 , shoot_dir);
	bullet.phy_speed_y = lengthdir_y(30 , shoot_dir);
	alarm[1] = room_speed * 1.5;
}