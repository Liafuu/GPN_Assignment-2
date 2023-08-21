if (phase == 1 && path_position == 1 && strt) {
	if (last_shot_time + 1 / (shot_per_sec + 3) <= current_time / 1000) {
		bhpg_pattern_init(1, 0, 0, 2, 360, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_spawn, 3, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / (shot_per_sec_2 + 34.65) <= current_time / 1000) {
		bhpg_pattern_init(1, 0, (30 * i), 16, 5760, 0, 0, 1, 0, 0, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_spiral, 1, 0.10, 0);
		bhpg_pattern_step();
		
		bhpg_pattern_init(1, 0, (-10 * i), 16, 5760, 0, 0, 1, 0, 0, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_spiral, 5, 0, 0);
		bhpg_pattern_step();

		i++;
		if ( i <= 12 ) {shot_per_sec_2 = 0.35; }
		if ( i > 12 ) { shot_per_sec_2 = -34.25; i = 0;  }
		last_shot_time_2 = current_time / 1000; }
	
} else if (phase == 2 && strt) {
	if (last_shot_time + 1 / shot_per_sec <= current_time / 1000) {
		// First set
		bhpg_pattern_init(1, 0, 245, 4, (45 * 4), 0, 0, 1, 0, 3, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_changing_faster, 4, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
	
	if (last_shot_time_2 + 1 / (shot_per_sec_2 + 2) <= current_time / 1000) {
		// Second set
		bhpg_pattern_init(1, 0, random_range(0, 360), 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_splitting_many, 2, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time_2 = current_time / 1000; }
		
} else if (phase == 3 && path_position == 1) {
	
	if (i < 2 && last_shot_time_2 + 1 / (shot_per_sec_2 - 2.3) <= current_time / 1000) {
		// Summons 2 circles
		if (instance_number(obj_boss_summon_2) < 2) {
			bhpg_pattern_init(1, 0, 0, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 90);
			bhpg_bullet_init(obj_boss_summon_2, 3, 0, 2);
			bhpg_pattern_step();
		}
		
		i++;
		last_shot_time_2 = current_time / 1000; }
		
} else if (phase == 4 && strt) {
	bhpg_pattern_step();
} else if (phase == 5) {	
	if (i < 2 && last_shot_time_2 + 1 / (shot_per_sec_2 - 2.3) <= current_time / 1000) {
		// Summons 2 circles
		if (instance_number(obj_boss_summon_2) < 4) {
			bhpg_pattern_init(1, 0, 0, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, -100);
			bhpg_bullet_init(obj_boss_summon_2, 4, 0, -2);
			bhpg_pattern_step();
		}
		
		i++;
		last_shot_time_2 = current_time / 1000; }
		
	if (instance_number(obj_boss_summon_2) > 3 &&
	(last_shot_time + 1 / (shot_per_sec - 4.8) <= current_time / 1000)) {
		// Summons a gigantic circle of arrows
		bhpg_pattern_init(1, 0, 0, 6, 1800, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_boss_summon_3, 5, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }
		
	if (instance_number(obj_boss_summon_2) > 3 &&
	(last_shot_time + 1 / (shot_per_sec - 4.8) <= current_time / 1000)) {
		// Summons a gigantic circle of arrows
		bhpg_pattern_init(1, 0, 0, 6, 1800, 0, 0, 1, 0, 100, 0, 0, 0, 0);
		bhpg_bullet_init(obj_boss_summon_3, 5, 0, 0);
		bhpg_pattern_step();
		
		last_shot_time = current_time / 1000; }

}
else if (path_position == 1 && strt) {
	bhpg_pattern_step(); }