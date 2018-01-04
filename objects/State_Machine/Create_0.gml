// Initialize States

// Player States
enum player_state{
	move,
	inair,
	idle,
	attack,
	run,
	dash
}

//Enemy States
enum enemy_state{
	move,
	patrol,
	idle,
	attack,
	run
}

// Weapons
enum weapons{
	DarkSword, 
	HandGun
}