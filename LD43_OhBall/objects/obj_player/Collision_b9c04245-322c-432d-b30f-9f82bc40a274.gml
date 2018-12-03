/// @description Insert description here
// You can write your code in this editor
if hp > 1 && alarm[0] < 0 && flag_rush {
	var point_count = int64(hp / 2);
	if other == instance_find(obj_brick , 0) {
		create_player_point(x , y + 50 , point_count , 270);
		instance_create_layer(x , y - 50 , "Instances", obj_crush_eff);
	}

	if other == instance_find(obj_brick , 1)  {
		create_player_point(x , y - 50 , point_count , 90);
		instance_create_layer(x , y + 50 , "Instances", obj_crush_eff);
	}

	if other == instance_find(obj_brick , 2)  {
		create_player_point(x + 50 , y , point_count , 0);
		instance_create_layer(x - 50 , y , "Instances", obj_crush_eff);
	}

	if other == instance_find(obj_brick , 3)  {
		create_player_point(x - 50 , y , point_count , 180);
		instance_create_layer(x + 50 , y , "Instances", obj_crush_eff);
	}
	audio_play_sound(au_crush , 1 , false);
	hp -= point_count;
	alarm[0] = cool_down;
}