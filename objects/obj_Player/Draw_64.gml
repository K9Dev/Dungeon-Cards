/// Debug GUI

if(debug){
	draw_text(200, 100,"Spd: " + string(walkspd));
	draw_text(200, 130,"Jumpspd: " + string(speed_array[1]));
	draw_text(200, 160,"Air Jumps: " + string(airjump));
	draw_text(200, 190,"Can Dash: " + string(alarm[1]));
}