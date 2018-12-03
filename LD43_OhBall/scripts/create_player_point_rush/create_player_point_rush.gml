///@param x
///@param y
///@param count
///@param dir
var point_x = argument0;
var point_y = argument1;
var count = argument2;
var dir = argument3;
var point_speed = 40;

for(var i = count; i > 0; i --){
	var player_point = instance_create_layer(point_x , point_y , "Instances" , obj_player_point);
	var ran_dir = dir + random_range(-90 , 90);
	player_point.phy_speed_x = lengthdir_x(point_speed , ran_dir);
	player_point.phy_speed_y = lengthdir_y(point_speed , ran_dir);
}