// Get Input

//Check Moves
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(ord("Q"));
key_shift = keyboard_check(vk_shift);
key_attack = mouse_check_button_pressed(mb_left);


key_right_released = keyboard_check_released(ord("D"));
key_left_released = keyboard_check_released(ord("A"));