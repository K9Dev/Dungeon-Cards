// Animation
// Air
if(!onTheFloor){

	//sprite_index = spr_Player_Air;
	scr_get_player_sprite(player_state.inair);
	//log("Set Air Sprite");
	
	image_speed = 0;
	
	if(sign(speed_array[1]) > 0){
		image_index = 1;
	}else{
		image_index = 0;
	}
}else{

	image_speed = 1;
	
	if(speed_array[0] == 0){
		scr_get_player_sprite(player_state.idle);
		//log("Set Idle Sprite");
	}else{
		if(pressedShift){
			scr_get_player_sprite(player_state.run);
			//log("Set Run Sprite");
		}else{
			scr_get_player_sprite(player_state.move);
			//log("Set Move Sprite");
		}
	}
}

if(speed_array[0] != 0){
	image_xscale = sign(speed_array[0]);
}

depth = -100;