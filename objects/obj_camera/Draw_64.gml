/// @description Insert description here
draw_sprite_stretched
	(spr_black,
	0,
	view_get_xport(view_camera[0]),
	view_get_yport(view_camera[0]),
	//view_get_hport()
	camera_get_view_width(view_camera[0])*0.3,
	camera_get_view_height(view_camera[0])*3);
	
draw_sprite_stretched
	(spr_black,
	0,
	view_xport[view_camera[0]],
	view_yport[view_camera[0]] + camera_get_view_height(view_camera[0])*2,
	camera_get_view_width(view_camera[0])*3,
	camera_get_view_height(view_camera[0])*0.7);
	
xd = camera_get_view_height(view_camera[0]);
