/// @param speed_array

var speed_array = argument0;


// Horizontal collision
if(place_meeting(x+speed_array[0], y, obj_Wall)){
	
	while(!place_meeting(x+sign(speed_array[0]), y, obj_Wall)){
		x += sign(speed_array[0]);	
	}
	
	speed_array[@ 0] = 0;
}
x += speed_array[0];

// Vertical collision
if(place_meeting(x, y+speed_array[1], obj_Wall)){
	
	while(!place_meeting(x, y+sign(speed_array[1]), obj_Wall)){
		y += sign(speed_array[1]);	
	}
	
	speed_array[@ 1] = 0;
	onTheFloor = true;
}
y += speed_array[1];