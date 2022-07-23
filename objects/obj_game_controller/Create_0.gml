/// @description Global Variable and Cursor setup

//There should be only one game controller
if(instance_number(obj_game_controller) > 1)
{
	instance_destroy();
}

// Make the generation random every time.
randomize();

// Custom cursor
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

//How likely will a red ball spawn?  1/X - chance
global.chance_for_red_ball = 4;

//How many red balls are in the field.
global.red_balls = 0;

//How much point each hit will give.
global.blue_ball_point = 10;
global.red_ball_point = 50;

//How many points the player has.
global.points = 0;

// How many point to get a new ball
global.points_to_gain_ball = 200;
global.points_to_gain_ball_progress = 0;

//Amount of shooting balls the player will start with
global.starting_balls = 3;

//Gain balls when stepping into next room
global.next_room_ball_gift = 2;

//Currently available shootable balls.
global.current_balls = 0;

//Custom font for points and shooting ball text.
global.font_number = font_add_sprite_ext(spr_font_number, "0123456789x%.", true, 3);

red_balls_left_color = c_red;
red_balls_left_text = "Left: ";