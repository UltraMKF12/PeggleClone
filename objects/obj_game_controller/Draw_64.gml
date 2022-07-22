/// @description Red Balls Left + Score

//Don't show score in title screen 
if(room == room_title_screen)
{
	exit;
}

// Red Ball Left text
draw_set_font(font_in_game);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(10, 5, red_balls_left_text);
var _red_balls_left = string(global.red_balls);
var _red_balls_left_text_width = string_width(red_balls_left_text) + 10;
draw_text_color(_red_balls_left_text_width, 5, _red_balls_left, red_balls_left_color, red_balls_left_color, red_balls_left_color, red_balls_left_color, 1);

// Score text
draw_set_font(global.font_number);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(room_width, 5, string(global.points));