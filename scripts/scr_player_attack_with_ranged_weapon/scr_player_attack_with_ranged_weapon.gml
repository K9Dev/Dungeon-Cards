// Move while attack
move = key_right - key_left;
var spd = 1;

if(pressedShift){
	spd = runspd;
}else{
	spd = walkspd;
}

speed_array[0] = move * spd;
speed_array[1] += grav;

move_obj(speed_array); 


// Create Ranged Attack

var rangedWeapon = argument0;

switch(rangedWeapon){
	
	case weapons.gun:
		scr_shoot_gun(speed_array);
		state = player_state.move;
	break;
	
}