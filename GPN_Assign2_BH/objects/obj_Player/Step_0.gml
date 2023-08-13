event_inherited();

// Main Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);
key_shoot = keyboard_check_direct(ord("A"));

if (key_focus) {
	focus = true;
	player_spd = 1;
} else {
	focus = false;
	player_spd = 3.5;
}

key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;

x += key_hor;
y += key_vert;

// Have it stay inside the room
x=clamp(x, 0, room_width - sprite_width);
y=clamp(y, 0, room_height - sprite_height);


// Shooting bullets
if (key_shoot ) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		bhpg_pattern_init(5, 20, 80, 1, 90, 0, 0, 1, 30, 4, 16, 16, 0, 5);
		bhpg_bullet_init(obj_bullet, 15, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}