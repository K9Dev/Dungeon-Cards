/// Patroling

if hspd == 0 {hspd = 2} else {hspd=sign(hspd)*2};


//log("patrol");
if(place_meeting(x+hspd, y, obj_Wall)){
	hspd = hspd*-1;
}

scr_move();

/*
// When seeing player, switch modus to fight
if (instance_exists(obj_player)){
	if  (x > obj_player.x) {
		if hspd > 0 {
			if (x - obj_Player.x) < 20 {state = alert}
		} else {
			if (x - obj_Player.x) < 80 {state = alert}
		}
	} else {
		if hspd > 0 {
				if (obj_Player.x - x) < 80 {state = alert}
		} else {
			if (obj_Player.x - x) < 20 {state = alert}
		}
	}
}
*/