// Move while attack
move = key_right - key_left;
var spd = 1;

if(pressedShift){
	spd = runspd;
}else{
	spd = walkspd;
}

speed_array[0] = move * spd;
speed_array[1] += grav;

var onTheFloor = false;

// Check if on Floor and jump
if(place_meeting(x, y+1, obj_Wall)){
	
	onTheFloor = true;
	
	// reset double jump
	airjump = 1;
	canJump = true;
}

// Double Jump
if(!onTheFloor && airjump > 0){
	if(key_jump){
		speed_array[1] = -5;
		airjump -= 1;
	}
}

// Jump
if(onTheFloor) && (key_jump){
	speed_array[1] = -7;
	onTheFloor = false;
}

move_obj(speed_array); 


// Create Attack
var weaponSprite = argument0;
var weaponHitboxSprite = argument1;


sprite_index = weaponSprite;
image_speed = 0.8;

if(image_index >= 1 && image_index < 4){
	var weaponHitbox = instance_create_depth(x, y, depth - 100, obj_darksword_hitbox);
	
	with(weaponHitbox){
		image_xscale = other.image_xscale;
		image_speed = 1;
		
		with(instance_place(x,y,Parent_Enemy)){
			if(enemy_hit == 0){
				enemy_hit = 1;
				enemy_speed_array[0] = sign(x-other.x) * 4;
				enemy_speed_array[1] = -3;
				image_xscale = sign(enemy_speed_array[0]);
				
				enemy_hp -= obj_WeaponControler.darkSwordAttackDmg;
				
				alarm[0] = room_speed / 6;
			}
		}
	}
}

if(image_index >= 5){
	canAttack = true;
	state = player_state.move;
}