/// @description Insert description here
// You can write your code in this editor
if other.flag_attack {
	hp -=2;
	create_point(2 * x - other.x , 2 * y - other.y ,
				2 , 
				point_direction(x, y, other.x, other.y) - 180);
	sprite_index = spr_enemy2_hurt;
	alarm[0] = room_speed;
	var dir_collision = point_direction(x , y , other.x , other.y);
	var pos_collision_x = x + lengthdir_x(103 , dir_collision);
	var pos_collision_y = y + lengthdir_y(103 , dir_collision);
	audio_play_sound(au_crush , 1 , false);
	instance_create_layer(pos_collision_x , pos_collision_y , "Instances", obj_crush_eff);
}