/// @description Random Color Change

color = "blue";
if(!variable_global_exists("red_balls"))
{
	global.red_balls = 0;
}

if(irandom_range(1, 4) == 1)
{
	sprite_index = spr_red_ball;
	color = "red";
	global.red_balls++;
}