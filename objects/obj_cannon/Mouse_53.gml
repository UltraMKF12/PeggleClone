// Don't shoot when there are no balls to shoot
if(global.current_balls <= 0)
{
	exit;
}

var _direction = cannon_direction;

var _ball = instance_create_layer(cannon_x, cannon_y, "Instances", obj_ball);

with(_ball)
{
	direction = _direction;
}

audio_play_sound(twoTone1, 2, false);
global.current_balls--;