// Get Input


if (gamepad_is_connected(0)){
	// Gamepad inputs
	key_right = gamepad_button_check(0, gp_padr);
	key_left =  gamepad_button_check(0, gp_padl);
	key_jump =  gamepad_button_check_pressed(0, gp_face1);
	key_jump_hold = gamepad_button_check(0, gp_face1);
	key_dash =  gamepad_button_check_pressed(0, gp_shoulderlb);
	key_shift =  gamepad_button_check(0, gp_shoulderl);
	key_attack = gamepad_button_check_pressed(0, gp_face3);
	key_attack_pressed = gamepad_button_check(0, gp_face3);

	key_change_weapon =  gamepad_button_check_pressed(0, gp_face4);

	key_inv =  gamepad_button_check_pressed(0, gp_start);

	key_right_released =  gamepad_button_check_released(0, gp_padr);
	key_left_released =  gamepad_button_check_released(0, gp_padl);

} else {
	//Check Moves
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(vk_space);
	key_jump_hold = keyboard_check(vk_space);
	key_dash = keyboard_check_pressed(ord("Q"));
	key_shift = keyboard_check(vk_shift);
	key_attack = mouse_check_button_pressed(mb_left);
	key_attack_pressed = mouse_check_button(mb_left);

	key_change_weapon = keyboard_check_pressed(ord("F"));

	key_inv = keyboard_check_pressed(ord("I"));

	key_right_released = keyboard_check_released(ord("D"));
	key_left_released = keyboard_check_released(ord("A"));
}