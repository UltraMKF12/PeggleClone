draw_self();

//Drawing a shooting tube that slides along the body.
var _direction = point_direction(x, y, mouse_x, mouse_y);
_direction = clamp(_direction, 197, 343); //Makes sure the ball does not get stuck on the roof.

var _xx = x + lengthdir_x(cannon_distance, _direction);
var _yy = y + lengthdir_y(cannon_distance, _direction);
draw_sprite_ext(spr_cannon_shooter, image_index, _xx, _yy, 1, 1, _direction, c_white, 1);

//Need this to later set the ball shooting position
global.cannon_x = _xx;
global.cannon_y = _yy;
global.cannon_direction = _direction;