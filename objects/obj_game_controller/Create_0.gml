/// @description Set Cursor + stuff

//There should be only one game controller
if(instance_number(obj_game_controller) > 1)
{
	instance_destroy();
}

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

global.points = 0;
global.red_balls = 0;
global.font_number = font_add_sprite_ext(spr_font_number, "0123456789x%.", true, 3);