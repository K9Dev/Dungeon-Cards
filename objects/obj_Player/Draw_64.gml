/// Debug GUI

if(debug){
	draw_text(200, 200,"Spd: " + string(walkspd));
	draw_text(200, 250,"Jumpspd: " + string(speed_array[1]));
	draw_text(200, 300,"Air Jumps: " + string(airjump));
}