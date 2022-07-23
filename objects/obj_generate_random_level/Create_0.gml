/// @description Generates random Point Balls around the map

// 32 - 416 X
// 96 - 736 Y
// 32pixel jump
//Density = 1/density - rare for a ball to spawn.
// 1  density = ball for every slot.
// 10 density = about 1/10 of the selction is balls.
	
min_x = 32; max_x = 416;
min_y = 160; max_y = 736;
pixel_distance = 32;
density = irandom_range(1, 10);

for(var i = min_x; i <= max_x; i+= pixel_distance)
{
	for(var k = min_y; k <= max_y; k+=pixel_distance)
	{
		var random_number = irandom_range(1, density);
		if(random_number == 1)
		{
			instance_create_layer(i, k, "Instances", obj_point_ball);
		}
	}
}

