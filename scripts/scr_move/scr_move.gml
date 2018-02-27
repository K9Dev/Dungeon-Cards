///scr_move();

// Horizontal collision
if(place_meeting(x+hspd, y, obj_Wall)){
	
	while(!place_meeting(x+sign(hspd), y, obj_Wall)){
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd;

// Vertical collision
if(place_meeting(x, y+vspd, obj_Wall)){
	
	while(!place_meeting(x, y+sign(vspd), obj_Wall)){
		y += sign(vspd);	
	}
	vspd = 0;
	onTheFloor = true;
}
y += vspd;