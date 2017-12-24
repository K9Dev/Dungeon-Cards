/// Debug GUI

if(debug){
	draw_text(200, 500,"Spd: " + string(walkspd));
	draw_text(200, 530,"Jumpspd: " + string(speed_array[1]));
	draw_text(200, 560,"Air Jumps: " + string(airjump));
	draw_text(200, 590,"Can Dash: " + string(alarm[1]));
	draw_text(200, 620,"Player Sprite: " + string(sprite_index));

	draw_text(200, 650,"Player Sprites: Idle = " + string(spr_Player_Idle) + ", Move = " + string(spr_Player_Move));
	draw_text(200, 670,"Player Sprites: Run = " + string(spr_Player_Run) + ", Air = " + string(spr_Player_Air));
	
	draw_text(200, 710,"Player ImageXScale: " + string(image_xscale));
	draw_text(200, 730,"Player Move:  = " + string(move));
}