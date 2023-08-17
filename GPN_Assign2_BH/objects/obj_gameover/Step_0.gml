key_reset = keyboard_check_direct(ord("R"));
key_menu = keyboard_check_direct(ord("T"));

if (key_reset) {
	room_goto(rm_stage);
}

if (key_menu) {
	room_goto(rm_menu);
}





