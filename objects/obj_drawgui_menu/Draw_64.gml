//Title Screen
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(font_default);
draw_text_transformed_color(room_width/2, title_text_height, game_title, 3, 3, 0, title_text_color, title_text_color, title_text_color, title_text_color, 1);

//Select Menu
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(font_default);

for(var i = 0; i < array_length(menu_text); i++)
{
	var _draw_color = menu_text_color;
	if(menu_text_current_id == i)
	{
		_draw_color = menu_text_highlight_color;
	}
	
	var _text_position = menu_text_height + i*menu_text_line_distance;
	draw_text_transformed_color(room_width/2, _text_position, menu_text[i], 1.5, 1.5, 0, _draw_color, _draw_color, _draw_color, _draw_color, 1);
}