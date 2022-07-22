/// @description Variable and Cursor setup

//There should be only one game controller
if(instance_number(obj_game_controller) > 1)
{
	instance_destroy();
}

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

points_to_gain_ball = 200;

global.current_balls = 2;
global.points = 0;
global.red_balls = 0;
global.font_number = font_add_sprite_ext(spr_font_number, "0123456789x%.", true, 3);

red_balls_left_color = c_red;
red_balls_left_text = "Left: ";