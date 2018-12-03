/// @description Insert description here
// You can write your code in this editor
if level == 0 {
	if instance_number(obj_enemy) < max_enemy && alarm[0] <= 0 {
		var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy);
		enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy.max_hp));
		alarm[0] = room_speed * 20;
	}
}

if level == 1 {
	if instance_number(obj_enemy) < max_enemy && alarm[0] <= 0 {
		var enemy_key = random(2);
		if enemy_key <= 1 {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy.max_hp));
			alarm[0] = room_speed * 10;
		}
		
		else {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy1);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy1.max_hp));
			alarm[0] = room_speed * 20;
		}
	}
}

if level == 2 {
	max_enemy = 4;
	if instance_number(obj_enemy) < max_enemy && alarm[0] <= 0 {
		var enemy_key = random(3);
		if enemy_key <= 1 {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy.max_hp));
			alarm[0] = room_speed * 10;
		}
		
		else if enemy_key > 1 && enemy_key <= 2 {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy1);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy1.max_hp));
			alarm[0] = room_speed * 10;
		}
		
		else {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy2);
			enemy.hp = 10;
			alarm[0] = room_speed * 20;
		}
	}
}

if level == 3 {
	max_enemy = 5;
	if instance_number(obj_enemy) < max_enemy && alarm[0] <= 0 {
		var enemy_key = random(3);
		if enemy_key <= 1 {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy.max_hp));
			alarm[0] = room_speed * 10;
		}
		
		else if enemy_key > 1 && enemy_key <= 2 {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy1);
			enemy.hp = irandom_range(max(obj_player.hp - 5 , 1) , min(obj_player.hp + 5 , obj_enemy.max_hp));
			alarm[0] = room_speed * 10;
		}
		
		else {
			var enemy = instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_enemy2);
			enemy.hp = 10;
			alarm[0] = room_speed * 10;
		}
	}
}

if ( instance_number(obj_point) + instance_number(obj_player_point) > max_point) {
	if instance_exists(obj_point) && alarm[1] <= 0{
		instance_destroy(instance_nearest(random_range(340 , 2420), random_range(285 , 1290) , obj_point));
		alarm[1] = room_speed / 3;
	}

	else if instance_exists(obj_player_point) && alarm[1] <= 0 {
		instance_destroy(instance_nearest(random_range(340 , 2420), random_range(285 , 1290) , obj_player_point));
		alarm[1] = room_speed / 3;
	}
}

else if alarm[2] <= 0 {
	instance_create_layer(random_range(340 , 2420) , random_range(285 , 1290) , "Instances" , obj_point);
	alarm[2] = room_speed * 2;
}