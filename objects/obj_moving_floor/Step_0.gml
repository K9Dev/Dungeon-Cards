/// @description move

if (max_distance_x <= distance_traveled_x){
	hspd = hspd*-1;
	distance_traveled_x = distance_traveled_x*-1;
}
distance_traveled_x += abs(hspd);
move_obj(hspd, vspd);