//Function also checks if current_balls should be increased.
function add_point(point_value){
	global.points += point_value;
	global.points_to_gain_ball_progress += point_value;
	
	if(global.points_to_gain_ball_progress >= global.points_to_gain_ball)
	{
		global.points_to_gain_ball_progress -= global.points_to_gain_ball;
		global.current_balls++;
	}
}