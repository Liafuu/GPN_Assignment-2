
if (i > 20) {
	bhpg_pattern_init(1, 0, 0, 10, 3600, 0, 0, 1, 5, 1, 32, 32, 0, 0);
	bhpg_bullet_init(obj_bullet_split, 0, 0.01, 0);
	bhpg_pattern_step();

	instance_destroy(self);
}









