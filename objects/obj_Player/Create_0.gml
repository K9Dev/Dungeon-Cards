/// @description Init Player

// Turn to true for Debug Drawings on GUI
debug = false;

// Player start State
state = player_state.move;

//_________Movement_Variables__________
// Moving and Jumping
hspd = 0;
vspd = 0;
move = 0;
onTheFloor = 1;
jumping = false;

stamina = 100; // this will prbly be removed to focus solely on the card mechanic

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


//__________Combat_Variables_____________
// State (helper)variable
in_control = true;

// Hp and Damage control
hp_max = 5;
hp = 5;
can_take_damage = true;

// Draw mechanic
draw_energy_current = 0;
draw_energy_max = 100;
card1=0;
card2=0;
card3=0;

// Players Weapon
current_weapon = weapons.HandGun;
//current_weapon = weapons.DarkSword;
has_weapon = true;
canAttack = true;
canShoot = 1;