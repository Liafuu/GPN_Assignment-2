// Stops shooting for phase 3 as it is a targetting phase - uses a different thing entirely
// Also prevents shooting until path is done
if (phase == 1) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set
		self.Aim(obj_player_hitbox.id);
		bhpg_pattern_init(1, 0, shot_angle, 6, 2160, 0, 0, 1, 0, 3, 0, 0, random_x, random_y);
		bhpg_bullet_init(obj_bullet_target, 4, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / shot_per_sec_2 <= current_time / 1000) {
		// Second set
		bhpg_pattern_init(1, 0, 0, 25, 9000, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000; }
		
} else if (phase == 4 && path_position == 1) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First Set
		bhpg_pattern_init(1, 0, 0, 15, 5400, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 2, -0.10, 1);
		bhpg_pattern_step();
		
		// Second Set
		bhpg_pattern_init(1, 0, 0, 15, 5400, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 2, -0.10, -1);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / (shot_per_sec_2 + 34.65) <= current_time / 1000) {
		// Third Set
		bhpg_pattern_init(1, 0, (30 * i), 16, 5760, 0, 0, 1, 0, 0, 64, 64, 0, 0);
		bhpg_bullet_init(obj_bullet_spiral, 1, 0.10, 0);
		bhpg_pattern_step();
		
		if (self.health <= 3000) {
			// Sixth Set after hitting 3000 HP
			bhpg_pattern_init(1, 0, (-30 * i), 16, 5760, 0, 0, 1, 0, 0, 64, 64, 0, 0);
			bhpg_bullet_init(obj_bullet_spiral, 4, 0, 0);
			bhpg_pattern_step();
		}
		
		i++;
		if ( i <= 15 ) {shot_per_sec_2 = 0.35; }
		if ( i > 15 ) { shot_per_sec_2 = -34.3; i = 0;  }
		last_shot_time_2 = current_time / 1000; }
		
	if (self.health <= 6000 && p == 0) { instance_destroy(obj_bullet); p = 1;}
	if (self.health <= 6000 && last_shot_time_3 + 1 / (shot_per_sec_3 + 0.3) <= current_time / 1000) {
		// Fourth Set after half HP
		self.Aim(obj_player_hitbox.id);
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 0, 3, 32, 32, random_x, random_y);
		bhpg_bullet_init(obj_bullet_target_big, 2, 0, 0);
		bhpg_pattern_step();
		
		// Fifth Set
		self.Aim(obj_player_hitbox.id);
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 0, 3, 32, 32, random_x, random_y);
		bhpg_bullet_init(obj_bullet_target_big, 2, 0, 0);
		bhpg_pattern_step();
		
		if (self.health <= 3000) {
			// Seventh Set after hitting 3000 HP
			self.Aim(obj_player_hitbox.id);
			bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 1, 0, 3, 32, 32, 0, 0);
			bhpg_bullet_init(obj_bullet_target_big, 2, 0, 0);
			bhpg_pattern_step();
		}
		
		last_shot_time_3 = current_time / 1000; }
		
	if (self.health <= 3000 && p == 1) { instance_destroy(obj_bullet); p = 2;}
	
} else if (path_position == 1) {
	bhpg_pattern_step();
}

