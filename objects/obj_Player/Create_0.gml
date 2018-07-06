/// @description Init Player

// Turn to true for Debug Drawings on GUI
debug = false;

// Moving and Jumping
hspd = 0;
vspd = 0;
move = 0;
onTheFloor = 1;
jumping = false;

// Gravity and Friction
grav = 0.25;
fric = 0.3;

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

// State (helper)variable
in_control = true;

// Hp and Damage control
hp = 3;
can_take_damage = true;

// Players Weapon
current_weapon = weapons.HandGun;
//current_weapon = weapons.DarkSword;
has_weapon = true;
canAttack = true;
canShoot = 1;