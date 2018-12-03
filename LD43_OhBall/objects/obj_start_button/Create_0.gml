/// @description Insert description here
// You can write your code in this editor
depth = 0;
ini_open("HighScore.ini");
high_score = ini_read_real("HighScore", "Score", 0);
ini_close();
