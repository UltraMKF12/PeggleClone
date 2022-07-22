/// @description Add points
if(color == "blue")
{
	add_point(10);
}

if(color == "red")
{
	global.red_balls--;
	add_point(50);
}

var _hit_sound = choose(zap1, zap2);
audio_play_sound(_hit_sound, 1, false);