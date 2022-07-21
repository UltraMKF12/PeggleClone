/// @description Go to next room when no red ball

//Don't switch rooms in title screen
if(room == room_title_screen)
{
	exit;
}

if(global.red_balls <= 0)
{
	global.red_balls = 0;
	if room_exists(room_next(room))
	{
		room_goto_next();
	}
	else
	{
		//Score does not reset!
		room_goto(room_title_screen);
	}
}

