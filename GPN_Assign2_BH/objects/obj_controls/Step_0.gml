key_esc = keyboard_check_pressed(vk_escape);
key_follower = keyboard_check_direct(ord("P"));

if (key_esc) {
	room_goto(rm_menu);
}

if (key_follower) {
	instance_activate_object(obj_player_follower);
} 





