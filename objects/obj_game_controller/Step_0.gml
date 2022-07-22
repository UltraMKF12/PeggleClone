/// @description Go to next room when no red ball

//Don't switch rooms in title screen
if(room == room_title_screen)
{
	exit;
}

//NEED TO OVERHAUL THIS SYSTEM FOR RANDOM ROOM GENERATION
if(global.red_balls <= 0)
{
	global.red_balls = 0;
	if room_exists(room_next(room))
	{
		global.current_balls += global.next_room_ball_gift;
		room_goto_next();
	}
	else
	{
		room_goto(room_title_screen);
	}
}

//Game ends when there is no ball in the field or inventory
if((instance_number(obj_ball) <= 0) and (global.current_balls <= 0))
{
	room_goto(room_title_screen);
}