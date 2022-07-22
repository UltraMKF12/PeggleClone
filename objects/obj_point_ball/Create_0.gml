/// @description Random Color Change

color = "blue";


if(irandom_range(1, global.chance_for_red_ball) == 1)
{
	sprite_index = spr_red_ball;
	color = "red";
	global.red_balls++;
}