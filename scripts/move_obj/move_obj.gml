/// @param hspd
/// @param vspd

var hsp = argument0;
var vsp = argument1;

// Horizontal collision
if(place_meeting(x+hsp, y, obj_Wall)){
	
	while(!place_meeting(x+sign(hsp), y, obj_Wall)){
		x += sign(hsp);	
	}
	
	//speed_array[@ 0] = 0;
	hsp = 0;
	hspd = 0;
}
x += hsp;

// Vertical collision
if(place_meeting(x, y+vsp, obj_Wall)){
	
	while(!place_meeting(x, y+sign(vsp), obj_Wall)){
		y += sign(vsp);	
	}
	
	//speed_array[@ 1] = 0;
	vsp = 0;
	vspd = 0;
	onTheFloor = true;
}
y += vsp;


//var speed_array = argument0;


//// Horizontal collision
//if(place_meeting(x+speed_array[0], y, obj_Wall)){
	
//	while(!place_meeting(x+sign(speed_array[0]), y, obj_Wall)){
//		x += sign(speed_array[0]);	
//	}
	
//	speed_array[@ 0] = 0;
//	hspd = 0;
//}
//x += speed_array[0];

//// Vertical collision
//if(place_meeting(x, y+speed_array[1], obj_Wall)){
	
//	while(!place_meeting(x, y+sign(speed_array[1]), obj_Wall)){
//		y += sign(speed_array[1]);	
//	}
	
//	speed_array[@ 1] = 0;
//	vspd = 0;
//	onTheFloor = true;
//}
//y += speed_array[1];