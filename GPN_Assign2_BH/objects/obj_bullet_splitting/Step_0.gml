// Inherit the parent event
event_inherited();
self.i++;

if (i > 30) {
	// Stops the bullet
	self.Aim(obj_player_hitbox);
	speed = 0;
	
	bhpg_pattern_init(1, 0, shot_angle, 6, 2160, 0, 0, 1, 5, 1, 16, 16, random_range(-16, 16), random_range(-16, 16));
	bhpg_bullet_init(obj_bullet_split, 0, 0.1, 0);
	bhpg_pattern_step();
	
	if (i > 32) { instance_destroy(self); }
}