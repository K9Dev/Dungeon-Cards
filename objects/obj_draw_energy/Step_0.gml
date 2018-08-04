/// @description go towards player if near

// move a bit initally, but stop after a bit
// this serves also as the basic move with "friction"

if (hsp > -1 and hsp < 1){hsp = 0}
if (vsp > -1 and vsp < 1){vsp = 0}

if (hsp != 0){
	hsp -= sign(hsp)*0.3;
}
if (vsp != 0){
	vsp -= sign(vsp)*0.3;	
}

// move towards player if near (after 2s)
if (alarm[0] <= 0){
	if (instance_exists(obj_Player)){
		if (abs(obj_Player.x - x) < 500 and abs(obj_Player.y - y) < 600){
			hsp += sign(obj_Player.x - x) * 1;
			vsp += sign(obj_Player.y - y) * 1;
		}
	}
}

x += hsp;
y += vsp;