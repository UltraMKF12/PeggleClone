var _direction = global.cannon_direction;

var _ball = instance_create_layer(global.cannon_x, global.cannon_y, "Instances", obj_ball);
show_debug_message(global.cannon_x);
show_debug_message(global.cannon_y);
show_debug_message(global.cannon_direction);

with(_ball)
{
	direction = _direction;
}