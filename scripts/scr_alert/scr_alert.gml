/// Alert

if (action_rdy and distance_to_object(obj_player) < 40){
	state = attack;	
	action_rdy = false;
}

if (action_rdy and distance_to_object(obj_player) > 320){
	state = patrol;	
}

if (action_rdy){
	hspd = sign((obj_player.x-x))*3;
	scr_move();
}