///scr_player_dash

canAttack = true;

var move = key_right - key_left;

hspd = move * dash_spd;

//speed_array[1] += grav;
vspd = grav;

move_obj(hspd, vspd); 

// Create the Dash Effect
var dash = instance_create_depth(x, y, depth, obj_dash_effect);

dash.sprite_index = sprite_index;
dash.image_index = image_index;

canDash = false;

if(hspd != 0){
	dash.image_xscale = sign(hspd);
}