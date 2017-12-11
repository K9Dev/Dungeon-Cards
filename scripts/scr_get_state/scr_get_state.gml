///scr_get_state(state)

var state = argument0;

switch(state){
	case player_state.move:
		scr_player_move();
		break;
		
	case player_state.dash:
		scr_player_dash();
		break;
		
	case player_state.attack:
		scr_player_attack(current_weapon);
		break;
}