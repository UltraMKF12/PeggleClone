/// @description Set Cursor + stuff

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

global.points = 0;

global.font_number = font_add_sprite_ext(spr_font_number, "0123456789x%.", true, 3);