/// @description Override

// Movement
key_shoot = keyboard_check_direct(ord("A"));
key_focus = keyboard_check(vk_shift);

if (key_focus) {
	focus = true;
	player_spd = 1.5;
	
	if (self.x != obj_player.x) {self.x = obj_player.x}
	if (self.y != obj_player.y + 42) {self.y = obj_player.y + 42}
} else {
	focus = false;
	player_spd = 4;
	
	if (self.x != obj_player.x) {self.x = obj_player.x}
	if (self.y != obj_player.y + 42) {self.y = obj_player.y + 42}
}

// Makes them stay within the room
x = clamp(x, 30, room_width - sprite_width - 16);

self.image_angle += 2;

// Shooting
if (key_shoot && key_focus) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting during Focus Mode
		self.Aim();
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 30, 4, 0, 0, 10, 0);
		bhpg_bullet_init(obj_bullet_player_focus_homing, 10, 0.2, 0);
		bhpg_pattern_step();
		
		self.Aim();
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 30, 4, 0, 0, -10, 0);
		bhpg_bullet_init(obj_bullet_player_focus_homing, 10, 0.2, 0);
		bhpg_pattern_step();


		last_shot_time = current_time / 1000;
	}
} else if (key_shoot) {
	if (last_shot_time + 1 / (shot_per_sec - 14) <= current_time / 1000) {
		// Shooting normally
		bhpg_pattern_init(3, 15, 82, 1, 0, 0, 0, 1, 30, 4, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_player_big, 8, 1, 0);
		bhpg_pattern_step();

		last_shot_time = current_time / 1000;
	}
}