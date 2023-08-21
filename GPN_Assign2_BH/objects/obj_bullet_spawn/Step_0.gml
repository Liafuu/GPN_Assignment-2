// Inherit the parent event
event_inherited();

distance += speed;

if (distance > (max_dist * random_range(2, 5))) {
	bhpg_pattern_init(1, 0, 260, 2, 90, 0, 0, 1, 0, 100, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_main, 7, 0, 0);
	bhpg_pattern_step();
	
	bhpg_pattern_init(1, 0, 90, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_main, 2, 0.3, 0);
	bhpg_pattern_step();
	
	distance = 0;
}
	
