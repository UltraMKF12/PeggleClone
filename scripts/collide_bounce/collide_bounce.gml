function collide_bounce(){
	if(gravity == 0) 
	{
		gravity = 0.3;
	}
	
	move_bounce_solid(false);
	direction = direction + irandom_range(-20, 20);
	speed -= 0.2;
}