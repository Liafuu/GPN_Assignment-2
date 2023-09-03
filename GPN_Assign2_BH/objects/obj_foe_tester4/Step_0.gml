if (last_shot_time + 1 / shot_per_sec  <= current_time / 1000) {
	self.Aim(obj_player_hitbox);
	
	if (i < 50) {
		// Strays
		bhpg_pattern_init(1, 0, shot_angle + 180, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0.5, 0, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle + 180, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 1, 0, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0.5, 0, 0);
		bhpg_pattern_step();
	
		// Target
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.05, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.07, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.1, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.12, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.15, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.2, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.25, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.3, 0);
		bhpg_pattern_step();
	}
		
	i++;
	if (i == 57) {b = 1;}
	last_shot_time = current_time / 1000;
}

if (last_shot_time + 1 / (shot_per_sec + 37) <= current_time / 1000 && b == 1) {
	if (i2 < 25) {
		bhpg_pattern_init(1, 0, 31 * i2, 9, (360 * 9), 0, 0, 0, 0, 0, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big2, 10, -0.05, 0);
		bhpg_pattern_step();
	}
	
	i2++;
	if (i2 == 70) {b = 0; i = 0; i2 = 0;}
	last_shot_time = current_time / 1000;
}
