/// @description Red Balls Left + Score

//Don't show score in title screen 
if(room == room_title_screen)
{
	exit;
}

draw_set_font(font_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(0, 0, "RedBall left: " + string(global.red_balls));

draw_set_font(global.font_number);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(room_width, 5, string(global.points));