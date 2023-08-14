event_inherited();

// Shooting
key_shoot = keyboard_check_direct(ord("A"));

// Sets sprite
if (key_left) {sprite_index = spr_player_left;}
else if (key_right) {sprite_index = spr_player_right;}
else {sprite_index = spr_player;}


// Shooting bullets
if (key_shoot && key_focus) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting during Focus Mode
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -25, -20);
		bhpg_bullet_init(obj_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, -10, -20);
		bhpg_bullet_init(obj_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 10, -20);
		bhpg_bullet_init(obj_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 20, 90, 1, 90, 0, 0, 1, 30, 4, 0, 0, 25, -20);
		bhpg_bullet_init(obj_player_focus, 20, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
} else if (key_shoot ) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// Shooting normally
		bhpg_pattern_init(5, 20, 80, 1, 90, 0, 0, 1, 30, 4, 0, 0, 0, -20);
		bhpg_bullet_init(obj_player_bullet, 15, 0, 0);
		bhpg_pattern_step();
		last_shot_time = current_time / 1000;
	}
}