/// Enemy Parent

// Array to manage X and Y speeds
hspd = 0;
vspd = 0;
enemy_speed_array = [hspd, vspd];

// Gravity
grav = 0.3;

onTheFloor = false;

// Speeds
walkspd = 3;
runspd = 5;

// Enemy start State
state = enemy_state.patrol;
modus = enemy_modus.idle;

// Enemy Stats
enemy_hp = 100;

enemy_hit = 1;