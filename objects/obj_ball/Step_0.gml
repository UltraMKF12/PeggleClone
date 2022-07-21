/// @description Ball movement

speed = clamp(speed, 0, max_speed);


//Delete balls that are stuck
if (speed == 0)
{
	delete_timer--;
	if(delete_timer <= 0)
	{
		instance_destroy();
	}
}
else
{
	delete_timer = room_speed * 1;
}