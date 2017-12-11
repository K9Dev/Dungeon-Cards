
var weapon = argument0;
var state = argument1;

switch(weapon){
	case weapons.darkSword:
		switch(state){
			case player_state.idle:
				sprite_index = spr_Player_with_Darksword_Idle;
				break;
			case player_state.move:
				sprite_index = spr_Player_with_Darksword_Move;
				break;
			case player_state.run:
				sprite_index = spr_Player_with_Darksword_Run;
				break;
			case player_state.inair:
				sprite_index = spr_Player_with_Darksword_Air;
				break;
		}
	break;
	
	case weapons.gun:
		switch(state){
			case player_state.idle:
				sprite_index = spr_Player_with_Darksword_Idle;
				break;
			case player_state.move:
				sprite_index = spr_Player_with_Darksword_Move;
				break;
			case player_state.run:
				sprite_index = spr_Player_with_Darksword_Run;
				break;
			case player_state.inair:
				sprite_index = spr_Player_with_Darksword_Air;
				break;
		}
	break;
}

