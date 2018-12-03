/// @description Insert description here
// You can write your code in this editor
damage = hp;

if alarm[1] <= 0 {	
	if flag_rush {
		if hp > 5 {
			create_player_point_rush(2 * x - other.x , 2 * y - other.y ,
									min(hp - 1 , other.damage) , 
									point_direction(x, y, other.x, other.y) - 180);
			hp = max(1 , hp - other.damage + 1);
		}
	
		else {
			create_player_point_rush(2 * x - other.x , 2 * y - other.y ,
									min(hp , other.damage) , 
									point_direction(x, y, other.x, other.y) - 180);
			hp -= other.damage;
		}
	
	}

	else {
		if hp > 5 {
			create_point(2 * x - other.x , 2 * y - other.y ,
						min(hp - 1 , other.damage) , 
						point_direction(x, y, other.x, other.y) - 180);
			hp = max(1 , hp - other.damage + 1);
		}
	
		else {
			create_point(2 * x - other.x , 2 * y - other.y ,
						min(hp , other.damage) , 
						point_direction(x, y, other.x, other.y) - 180);
			hp -= other.damage;
		}
	}

	var dir_collision = point_direction(x , y , other.x , other.y);
	var pos_collision_x = x + lengthdir_x(103 , dir_collision);
	var pos_collision_y = y + lengthdir_y(103 , dir_collision);
	audio_play_sound(au_crush , 1 , false);
	instance_create_layer(pos_collision_x , pos_collision_y , "Instances", obj_crush_eff);
	alarm[1] = room_speed;
}