/// @description Take Damage
// should (later) be remade with a damage objection, instead of the actual enemy obj

if (can_take_damage){
// Damage
	hp -= 5; // hp -= other.dmg - armor;
// Invi frames
	can_take_damage = false;
	alarm[3] = room_speed*2;
// Knockback
	if (x < other.x){
		hspd -= 10;
	} else {
		hspd += 10;
	}
// Lose control after taking hit
	in_control = false; // if (other.stun)
	alarm[4] = room_speed*0.3;
}
