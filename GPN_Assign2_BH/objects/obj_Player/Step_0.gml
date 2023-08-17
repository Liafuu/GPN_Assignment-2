// Shooting
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_focus = keyboard_check(vk_shift);
key_shoot = keyboard_check_direct(ord("A"));
key_bomb = keyboard_check(vk_space);

// Checks if shift is pressed
if (key_focus) {
	focus = true;
	player_spd = 1.5;
} else {
	focus = false;
	player_spd = 4;
}

key_hor = (key_right - key_left) * player_spd;
key_vert = (key_down - key_up) * player_spd;

// Stops the player from moving during death animation
if (place_meeting(x + key_hor, y, obj_death_anim) == true) { key_hor = 0; }
if (place_meeting(x, y + key_vert, obj_death_anim) == true) { key_vert = 0; }

// Moves the player
x += key_hor;
y += key_vert;

x = clamp(x, 30, room_width - sprite_width);
y = clamp(y, 30, room_height - sprite_height);

// Sets sprite
if (obj_player_hitbox.Invuln()) {sprite_index = spr_player_invuln;}
else if (key_left) {sprite_index = spr_player_left;}
else if (key_right) {sprite_index = spr_player_right;}
else {sprite_index = spr_player;}

// Shooting bullets
if (key_shoot && key_focus) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting during Focus Mode
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -20, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 25, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -8, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 25, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 8, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 25, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 20, -10);
		bhpg_bullet_init(obj_bullet_player_focus, 25, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
} else if (key_shoot ) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting normally
		bhpg_pattern_init(5, 20, 80, 1, 90, 0, 0, 1, 30, 4, 0, 0, 0, -20);
		bhpg_bullet_init(obj_bullet_player, 20, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}

// Using the bombs
if (key_bomb && bomb_use == false && 
((last_bomb_time + 1 / bomb_cd) <= current_time / 1000) && bombs > 0) {self.Bomb()};
if (bomb_use) {
	if (last_shot_time + 1 / (shot_per_sec + 10) <= current_time / 1000) {
		if (b < 1) {instance_destroy(obj_bullet);}
		// First set of bullets
		bhpg_pattern_init(1, 0, (30 * b), 16, 5760, 0, 0, 1, 30, 4, 32, 32, random_range(-64, 64), random_range(-64, 64));
		bhpg_bullet_init(obj_bullet_player_bomb, 2, 0.2, 0);
		bhpg_pattern_step();
		
		// Second set of bullets
		bhpg_pattern_init(1, 0, (20 * b), 16, 5760, 0, 0, 1, 30, 4, 32, 32, random_range(-64, 64), random_range(-64, 64));
		bhpg_bullet_init(obj_bullet_player_bomb_2, 2, 0.2, 0);
		bhpg_pattern_step();
		
		// Makes the player invulnerable
		if (b < 1) {obj_player_hitbox.iframe_time = (current_time / 1000); self.bombs--;}
		b++; // Limits amount of bomb projectiles that will be shot
		if (b > 15) {bomb_use = false;}
		last_shot_time = current_time / 1000;
		last_bomb_time = current_time / 1000;
	}
	bomb_cd = 0.45;
} else { bomb_use = false; }