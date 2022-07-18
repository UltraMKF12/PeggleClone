function collide_bounce(){
	move_bounce_solid(false);
	direction = direction + irandom_range(-20, 20);
	speed -= 0.2;
}