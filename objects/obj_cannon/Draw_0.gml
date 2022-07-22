draw_self();

//Drawing a shooting tube that slides along the body.
var _direction = point_direction(x, y, mouse_x, mouse_y);
_direction = clamp(_direction, 197, 343); //Makes sure the ball does not get stuck on the roof.

var _xx = x + lengthdir_x(cannon_distance, _direction);
var _yy = y + lengthdir_y(cannon_distance, _direction);
draw_sprite_ext(spr_cannon_shooter, image_index, _xx, _yy, 1, 1, _direction, c_white, 1);


//Need this to later set the ball shooting position
cannon_x = _xx;
cannon_y = _yy;
cannon_direction = _direction;


//Projectile line from canon.
var _collision_point = collision_line_point(_xx, _yy, mouse_x, mouse_y, all, true, true);
draw_line_width_color(_xx, _yy, _collision_point[1], _collision_point[2], 3, c_grey, c_grey);


//Draw remaining balls
draw_set_font(global.font_number);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

var _text_position_x = _xx + lengthdir_x(remaining_balls_text_distance, _direction);
var _text_position_y = _yy + lengthdir_y(remaining_balls_text_distance, _direction);
var _current_balls = string(global.current_balls);

draw_text_transformed_color(_text_position_x, _text_position_y, _current_balls, 1, 1, _direction+90, remaining_balls_text_color, remaining_balls_text_color, remaining_balls_text_color, remaining_balls_text_color, 1);