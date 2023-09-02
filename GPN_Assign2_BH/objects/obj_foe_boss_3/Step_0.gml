if (phase == 1) {
	if (i < 2 && last_shot_time_2 + 1 / (shot_per_sec_2 - 2.3) <= current_time / 1000) {
		// Summons 2 circles
		if (instance_number(obj_boss3_summon) < 2) {
			bhpg_pattern_init(1, 0, 0, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 90);
			bhpg_bullet_init(obj_boss3_summon, 3, 0, 2);
			bhpg_pattern_step();
		}
		
		i++;
		last_shot_time_2 = current_time / 1000;
	}
} else if (phase == 2 && strt) {
	if (last_shot_time + 1 / (shot_per_sec + 50) <= current_time / 1000) {
		// First set		
		bhpg_pattern_init(1, 0, 50 + (0.20 * i), 2, 70, 0, 0, 1, 0, 0, 0, 0, 0, 0);
		bhpg_bullet_init(obj_laser, 5, 0.10, 0);
		bhpg_pattern_step();

		i++;
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / (shot_per_sec_2 + 2) <= current_time / 1000) {
		// Second set
		bhpg_pattern_init(1, 0, random_range(0, 360), 3, 360, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_splitting_many, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000; }
		
} else if (phase == 3 && strt) {
	if (instance_number(obj_boss3_summon) < 3) {
		bhpg_pattern_step();
	}
} else if (phase == 4 && strt) {
	bhpg_pattern_step();
} else if (phase == 5) {	
	if (last_shot_time + 1 / (shot_per_sec - 4.8) <= current_time / 1000) {
		// Summons a gigantic circle of summons
		bhpg_pattern_init(1, 0, 270, 10, (360 * 10), 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_boss3_summon_bullet, 5, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }

}
else if (path_position == 1 && strt) {
	bhpg_pattern_step(); }