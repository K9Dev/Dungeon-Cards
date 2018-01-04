///scr_player_dash

canAttack = true;

var move = key_right - key_left;

speed_array[0] = move * dash_spd;

//speed_array[1] += grav;
speed_array[1] = grav;

move_obj(speed_array); 

// Create the Dash Effect
var dash = instance_create_depth(x, y, depth, obj_dash_effect);

dash.sprite_index = sprite_index;
dash.image_index = image_index;

canDash = false;

if(speed_array[0] != 0){
	dash.image_xscale = sign(speed_array[0]);
}