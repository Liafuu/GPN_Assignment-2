// Inherit the parent event
event_inherited();

distance += speed;
distance2 += speed;

if (distance > (max_dist * random_range(2, 5))) {
	bhpg_pattern_init(1, 0, 270, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_spawned_big, 5, 0, 0);
	bhpg_pattern_step();
	
	distance = 0;
}

if (distance2 > (max_dist * random_range(1, 3))) {
	bhpg_pattern_init(1, 0, 90, 1, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_spawned_big, 5, 0, 0);
	bhpg_pattern_step();
	
	distance2 = 0;
}
	
