/// @description Menu keyboard control

var _min_id = 0;
var _max_id = array_length(menu_text) - 1;

var _up_key = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));

if(_up_key)
{
	if(menu_text_current_id < _max_id)
	{
		menu_text_current_id++;
	}
	else
	{
		menu_text_current_id = _min_id;
	}
}

else if(_down_key)
{
	if(menu_text_current_id > _min_id)
	{
		menu_text_current_id--;
	}
	else
	{
		menu_text_current_id = _max_id;
	}
}

//Custom interaction
if(keyboard_check_pressed(vk_enter))
{
	switch(menu_text_current_id)
	{
		//Play
		case 0:
			new_game_reset() // Reset variables
			room_goto(room_random);
			break;
			
		//Quit
		case 1:
			game_end();
			break;
	}
}