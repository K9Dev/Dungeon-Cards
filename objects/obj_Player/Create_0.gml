///Create Player

// Turn to true for Debug Drawings on GUI
debug = true;

// Array to manage X and Y speeds
speed_array = [0, 0];
move = 0;

// Gravity
grav = 0.3;

// Speeds
walkspd = 4;
runspd = 1.9;
dash_spd = 10;

// For Dash Cooldown calculation
canDash = true;

// For Run calculation
pressedShift = false;

// For Double Jump calculation
airjump = 1;

// Player start State
state = player_state.move;

// Player Stats
hp = 150;

// Players Weapon
//current_weapon = weapons.darkSword;
current_weapon = weapons.darkSword;
has_weapon = true;
canAttack = true;

invOpen = false;
