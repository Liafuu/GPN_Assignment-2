// Inherit the parent event
event_inherited();
self.i++;

if (i > 30) {
	// Stops the bullet
	speed = 0;
	
	bhpg_pattern_init(1, 0, image_angle, 6, 2160, 0, 0, 1, 5, 1, 0, 0, 0, 0);
	bhpg_bullet_init(obj_bullet_split, 0, 0.07, 0);
	bhpg_pattern_step();
	
	instance_destroy(self);
}