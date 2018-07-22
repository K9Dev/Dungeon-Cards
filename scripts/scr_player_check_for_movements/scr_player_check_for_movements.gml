// Run during SHIFT
if(key_shift && !pressedShift){
	walkspd = walkspd * runspd;
	pressedShift = true;
	
}else{
	walkspd = 4;
	pressedShift = false;
}

// brah, dis some unnecessary complicated code
/*
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
*/
// only this line needed:
move = key_right - key_left;

// Set hspd based on input
var pot_hspd = move * walkspd;
if (move == 1){
	if (hspd < pot_hspd){
		hspd += 1;
		if hspd > pot_hspd {hspd = pot_hspd}
	}
} else if (move == -1){
	if (hspd > pot_hspd){
		hspd -= 1;
		if hspd < pot_hspd {hspd = pot_hspd}
	}
// moved friction to the move_obj()
} /*else {
	if (hspd != 0){
		if (hspd - fric > 0){
			hspd -= fric;
		} else if (hspd + fric < 0){
			hspd += fric;
		} else {
			hspd = 0;
		}
	}
}*/


//vspd += grav; //moved this to move_obj()

// jump higher if jump key is hold
if (jumping){
	if (key_jump_hold and vspd < 0){
		vspd -= 0.1;
	} else {
		jumping = false;
	}
}

// Check if on Floor and jump
if(place_meeting(x, y + 1, obj_Wall)){
	
	onTheFloor = true;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Wall Jump right
if(!onTheFloor && place_meeting(x - 1, y, obj_Wall) && key_right){
	vspd = -5;
	airjump -= 1;
	jumping = true;
	
	//log("Walljump right..");
}

// Wall Jump left
if(!onTheFloor && place_meeting(x + 1, y, obj_Wall) && key_left && !key_right){
	vspd = -5;
	airjump -= 1;
	jumping = true;
	
	//log("Walljump left..");
}

// Double Jump
if(!onTheFloor && airjump > 0){
	if(key_jump){
		vspd = -4;
		airjump -= 1;
		jumping = true;
	}
}

// Jump
if(onTheFloor) && (key_jump){
	vspd = -6;
	onTheFloor = false;
	jumping = true;
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