// Bullet setup

speed += accel;
direction += curve;
image_angle = direction;

if (instance_number(obj_foe_boss_2) < 1) {instance_destroy(self)}

if (instance_number(obj_boss_summon_2) > 1 && obj_foe_boss_2.phase == 3) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		bhpg_pattern_init(1, 0, (self.direction * -1), 3, (45 * 3), 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
	
	if (last_shot_time_2 + 1 / shot_per_sec  <= current_time / 1000) {
		bhpg_pattern_init(1, 0, self.direction, 3, (45 * 3), 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_split, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000;
	}
} else if (obj_foe_boss_2.phase == 4) {
	if (last_shot_time + 1 / (shot_per_sec - 13.8) <= current_time / 1000) {
		bhpg_pattern_init(1, 0, 270, 1, 0, 0, 0, 1, 0, 5, 16, 16, 0, 0);
		bhpg_bullet_init(obj_bullet_spawned_big, random_range(1, 4), 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
} else if (obj_foe_boss_2.phase == 5) {
	if (instance_number(obj_boss_summon_2) > 3 &&
	last_shot_time + 1 / (shot_per_sec - 14.5) <= current_time / 1000) {
		
		bhpg_pattern_init(1, 0, 0, 10, 3600, 0, 0, 1, 0, 100, 64, 64, 0, 0);
		bhpg_bullet_init(obj_bullet_splitter, 4, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000;
	}
}




