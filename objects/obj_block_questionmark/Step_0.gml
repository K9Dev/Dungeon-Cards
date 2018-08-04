/// @description player jumps into block
if (active){
	if (place_meeting(x, y+1, obj_Player)){
		image_speed = 1;
		active = false;
		var energy = instance_create_depth(x, y-16, depth, obj_draw_energy);
		energy.vsp = -6;
	}
}
