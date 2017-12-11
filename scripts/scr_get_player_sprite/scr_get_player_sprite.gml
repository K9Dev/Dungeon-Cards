
var state = argument0;

switch(state){
	case player_state.idle:
		if(has_weapon){
			scr_draw_player_with_weapons(current_weapon, state);
		}else{
			sprite_index = spr_Player_Idle;
		}
		
	break;
	
	case player_state.move:
		if(has_weapon){
			scr_draw_player_with_weapons(current_weapon, state);
		}else{
			sprite_index = spr_Player_Move;
		}
		
	break;
	
	case player_state.run:
		if(has_weapon){
			scr_draw_player_with_weapons(current_weapon, state);
		}else{
			sprite_index = spr_Player_Run;
		}
		
	break;
	
	case player_state.inair:
		if(has_weapon){
			scr_draw_player_with_weapons(current_weapon, state);
		}else{
			sprite_index = spr_Player_Air;
		}
		
	break;
}

