// Bullet setup

speed += accel;
direction += curve;
image_angle = direction;

if (obj_foe_boss_3.phase = 1 && instance_number(obj_boss3_summon) > 1) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		bhpg_pattern_init(1, 0, (self.direction * -1), 4, (45 * 4), 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split, 0, 0.01, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
	
	if (last_shot_time_2 + 1 / shot_per_sec  <= current_time / 1000) {
		bhpg_pattern_init(1, 0, self.direction, 4, (45 * 4), 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split, 0, 0.02, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000;
	}
} else if (obj_foe_boss_3.phase = 3 && instance_number(obj_boss3_summon) > 2) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		self.Aim(obj_foe);
		bhpg_pattern_init(1, 0, shot_angle, 4, (45 * 4), 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split, 0, 0.01, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
}



