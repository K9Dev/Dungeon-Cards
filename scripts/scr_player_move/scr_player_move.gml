///scr_player_move

if(hp <= 0){
	instance_destroy();
}

// Run during SHIFT
if(key_shift && !pressedShift){
	walkspd = walkspd * runspd;
	pressedShift = true;
	
}else{
	walkspd = 4;
	pressedShift = false;
}

//var move = key_right - key_left;
move = 0;

if(key_left){
	move = -1;
}else if(key_left_released){
	if(key_right){
		move = 1;
	}else{
		move = 0;
	}
}

if(key_right){
	move = 1;
}else if(key_right_released){
	if(key_left){
		move = -1;
	}else{
		move = 0;
	}
}

// Set move dir and speed
speed_array[0] = move * walkspd;

speed_array[1] += grav;

var onTheFloor = false;

// Check if on Floor and jump
if(place_meeting(x, y+1, obj_Wall)){
	
	onTheFloor = true;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Wall Jump right
if(!onTheFloor && place_meeting(x-1, y, obj_Wall) && key_right){
	speed_array[1] = -6;
	airjump -= 1;
}

// Wall Jump left
if(!onTheFloor && place_meeting(x+1, y, obj_Wall) && key_left && !key_right){
	speed_array[1] = -6;
	airjump -= 1;
}

// Double Jump
if(!onTheFloor && airjump > 0){
	if(key_jump){
		speed_array[1] = -5;
		airjump -= 1;
	}
}

// Jump
if(onTheFloor) && (key_jump){
	speed_array[1] = -7;
	onTheFloor = false;
}

move_obj(speed_array);

// Animation
// Air
if(!onTheFloor){

	//sprite_index = spr_Player_Air;
	
	scr_get_player_sprite(player_state.inair);
	
	image_speed = 0;
	
	if(sign(speed_array[1]) > 0){
		image_index = 1;
	}else{
		image_index = 0;
	}
}else{

	//image_speed = 1;
	
	//if(speed_array[0] == 0){
	//	sprite_index = spr_Player_Idle;
	//}else{
	//	if(pressedShift){
	//		sprite_index = spr_Player_Run;
	//	}else{
	//		sprite_index = spr_Player_Move;
	//	}
	//}
	
	image_speed = 1;
	
	if(speed_array[0] == 0){
		scr_get_player_sprite(player_state.idle);
	}else{
		if(pressedShift){
			scr_get_player_sprite(player_state.run);
		}else{
			scr_get_player_sprite(player_state.move);
		}
	}
}

if(speed_array[0] != 0){
	image_xscale = sign(speed_array[0]);
}

depth = -100;