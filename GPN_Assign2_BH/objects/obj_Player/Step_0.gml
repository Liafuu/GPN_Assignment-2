// Shooting
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);
key_shoot = keyboard_check_direct(ord("A"));

// Checks if shift is pressed
if (key_focus) {
	focus = true;
	player_spd = 1.5;
} else {
	focus = false;
	player_spd = 4;
}

// Moves the player
key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;
x += key_hor;
y += key_vert;

x = clamp(x, 25, room_width - sprite_width);
y = clamp(y, 25, room_height - sprite_height);

// Sets sprite
if (key_left) {sprite_index = spr_player_left;}
else if (key_right) {sprite_index = spr_player_right;}
else {sprite_index = spr_player;}


// Shooting bullets
if (key_shoot && key_focus) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting during Focus Mode
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -20, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -8, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 8, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 20, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
} else if (key_shoot ) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting normally
		bhpg_pattern_init(5, 20, 80, 1, 90, 0, 0, 1, 30, 4, 0, 0, 0, -20);
		bhpg_bullet_init(obj_bullet_player, 15, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}