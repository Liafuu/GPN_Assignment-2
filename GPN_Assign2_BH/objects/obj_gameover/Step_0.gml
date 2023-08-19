key_reset = keyboard_check_direct(ord("R"));
key_menu = keyboard_check_direct(ord("T"));

if (key_reset) {
	room_goto(global.last_visited_room);
	global.lives = 3;
	global.bombs = 3;
	global.score = 0;
}

if (key_menu) {
	room_goto(rm_menu);
}





