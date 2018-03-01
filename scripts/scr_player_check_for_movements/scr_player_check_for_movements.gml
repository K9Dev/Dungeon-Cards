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
hspd = move * walkspd;

vspd += grav;

// Check if on Floor and jump
if(place_meeting(x, y + 1, obj_Wall)){
	
	onTheFloor = true;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Wall Jump right
if(!onTheFloor && place_meeting(x - 1, y, obj_Wall) && key_right){
	vspd = -6;
	airjump -= 1;
	
	//log("Walljump right..");
}

// Wall Jump left
if(!onTheFloor && place_meeting(x + 1, y, obj_Wall) && key_left && !key_right){
	vspd = -6;
	airjump -= 1;
	
	//log("Walljump left..");
}

// Double Jump
if(!onTheFloor && airjump > 0){
	if(key_jump){
		vspd = -5;
		airjump -= 1;
	}
}

// Jump
if(onTheFloor) && (key_jump){
	vspd = -7;
	onTheFloor = false;
}

// Check Dash State
if(key_dash && hspd != 0 && canDash){
	state = player_state.dash;
	
	// Set Move State
	alarm[0] = room_speed / 6;
	
	// Reset Dash Cooldown
	alarm[1] = room_speed * 1.6;
}

// Check Attack State
if(key_attack && canAttack){
	state = player_state.attack;
	canAttack = false;
}

return onTheFloor;