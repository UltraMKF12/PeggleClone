/// @description Add points
if(color == "blue")
{
	add_point(global.blue_ball_point);
}

if(color == "red")
{
	global.red_balls--;
	add_point(global.red_ball_point);
}

var _hit_sound = choose(zap1, zap2);
audio_play_sound(_hit_sound, 1, false);

sequence_create()