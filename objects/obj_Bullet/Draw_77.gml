
//log("Bullet post draw..");

if(place_meeting(x,y,obj_Wall)){
	instance_destroy();
}

if(place_meeting(x,y,Parent_Enemy)){
	instance_destroy();
}

