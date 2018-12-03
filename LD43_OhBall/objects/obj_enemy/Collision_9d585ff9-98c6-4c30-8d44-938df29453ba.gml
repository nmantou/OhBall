/// @description Insert description here
// You can write your code in this editor
damage = hp;
if alarm[0] <= 0 {
	if hp > 5 {
		create_point(2 * x - other.x , 2 * y - other.y ,
					min(hp - 1 , other.damage) , 
					point_direction(x, y, other.x, other.y) - 180);
		hp = max(1 , hp - other.damage);
	}

	else {
		create_point(2 * x - other.x , 2 * y - other.y ,
					min(hp , other.damage) , 
					point_direction(x, y, other.x, other.y) - 180);
		hp -= other.damage;
	}
	sprite_index = spr_enemy_hurt;
	alarm[0] = room_speed;
}
