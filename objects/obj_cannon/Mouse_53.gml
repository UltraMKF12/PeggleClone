var _direction = global.cannon_direction;

var _ball = instance_create_layer(global.cannon_x, global.cannon_y, "Instances", obj_ball);

with(_ball)
{
	direction = _direction;
}

audio_play_sound(twoTone1, 2, false);