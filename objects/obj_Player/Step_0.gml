/// Step Event

if(hp <= 0){
	instance_destroy();
}

//Check Moves
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);

// Run during SHIFT
if(keyboard_check(vk_shift) && !pressedShift){
	walkspd = walkspd * runspd;
	pressedShift = true;
}else{
	walkspd = 4;
	pressedShift = false;
}


var move = key_right - key_left;

// Set move dir and speed
speed_array[0] = move * walkspd;

speed_array[1] += grav;

var onTheFloor = false;

// Check if on Floor and jump
if(place_meeting(x, y+1, obj_Wall)){
	
	onTheFloor = true;
	
	// reset double jump
	airjump = 1;
}

if(!onTheFloor && airjump > 0){
	if(key_jump){
		speed_array[1] = -5;
		airjump -= 1;
	}
}

if(onTheFloor) && (key_jump){
	speed_array[1] = -7;
	onTheFloor = false;
}

move_obj(speed_array);

// Animation
// Air
if(!onTheFloor){
	sprite_index = spr_Player_Air;
	image_speed = 0;
	
	if(sign(speed_array[1]) > 0){
		image_index = 1;
	}else{
		image_index = 0;
	}
}else{

	image_speed = 1;
	
	if(speed_array[0] == 0){
		sprite_index = spr_Player;
	}else{
		sprite_index = spr_Player_Run;
	}
}

if(speed_array[0] != 0){
	image_xscale = sign(speed_array[0]);
}



