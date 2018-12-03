/// @description Insert description here
// You can write your code in this editor
if flag_get { 
	if obj_player.hp < obj_player.max_hp {
		obj_player.hp += 1;
		flag_des = true;
		audio_play_sound(au_get , 1 , false);
	}
}