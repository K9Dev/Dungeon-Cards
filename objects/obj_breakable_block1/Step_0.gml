/// @description player jumps into block
if (active){
	if (place_meeting(x, y+1, obj_Player)){
		image_speed = 1;
		active = false;
	}
}
