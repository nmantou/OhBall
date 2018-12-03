/// @description Insert description here
// You can write your code in this editor
if flag_get { 
	if other.hp < other.max_hp {
		other.hp += 1;
		flag_des = true;
		target_get = other;
	}
}