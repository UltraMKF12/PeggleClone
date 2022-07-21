/// @description Add points
if(color == "blue")
{
	global.points += 10;
}

if(color == "red")
{
	global.red_balls--;
	global.points += 50;
}

var _hit_sound = choose(zap1, zap2);
audio_play_sound(_hit_sound, 1, false);