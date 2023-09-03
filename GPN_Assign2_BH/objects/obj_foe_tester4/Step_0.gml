if (last_shot_time + 1 / (shot_per_sec + i2 / 20)  <= current_time / 1000) {
	self.Aim(obj_player_hitbox);
	
	if (i < 80) {
		audio_play_sound(snd_boss_shoot, 1, false);
		
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
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 20, 20, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.07, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 24, 24, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.1, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 28, 28, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.12, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.15, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 36, 36, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.2, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 40, 40, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.25, 0);
		bhpg_pattern_step();
	
		bhpg_pattern_init(1, 0, shot_angle, 1, 0, 0, 0, 0, 0, 15, 44, 44, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, 0, 0.3, 0);
		bhpg_pattern_step();
	}
		
	i++;
	i2++;
	if (i == 80) {audio_play_sound(snd_boss_charge, 1, false);}
	if (i == 95) {b = 1; i2 = 0;}
	last_shot_time = current_time / 1000;
}

if (last_shot_time + 1 / (shot_per_sec + 22) <= current_time / 1000 && b == 1) {
	if (i2 < 18) {
		bhpg_pattern_init(1, 0, 25 * i2, 9, (360 * 9), 0, 0, 0, 0, 0, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_target_big, (16.5 - i2 / 2), -0.05, 0);
		bhpg_pattern_step();
	}
	
	i2++;
	if (i2 == 40) {b = 0; i = 0; i2 = 0;}
	last_shot_time = current_time / 1000;
}
