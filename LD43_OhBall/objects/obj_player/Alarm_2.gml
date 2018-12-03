/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
ini_open("HighScore.ini");
ini_write_real("HighScore", "Score", obj_game_controller.high_score );
ini_close();
room_goto(start_room);