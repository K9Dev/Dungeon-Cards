///Create Player

// Turn to true for Debug Drawings on GUI
debug = false;

// Array to manage X and Y speeds
speed_array = [0, 0];

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

