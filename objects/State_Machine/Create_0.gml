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
	moving,
	idle,
	patrol,
	attacking,
	hit,
	run
}

// Enemy Modus
enum enemy_modus{
	idle,
	patrol,
	alert,
	fight,
	hurt
}

// Weapons
enum weapons{
	DarkSword, 
	HandGun
}