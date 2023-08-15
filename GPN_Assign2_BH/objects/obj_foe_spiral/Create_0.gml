event_inherited();

// Method for foe dying
self.Die = function() {
	if (will_drop) {
		life_pickup = instance_create(self.x, self.y, obj_pickup);
		life_pickup.image_xscale = 4;
		life_pickup.image_yscale = 4;
	}
	instance_destroy();
}

// Taking damage
self.OnDamage = function(bullet) {
	
	// Takes damage when stopped moving
	if (path_position == 1) {
		self.health -= bullet.damage;
	}
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		// Destroys foe once their hp hits 0
		self.Die();
	}
}

path_start(self.path_enter_stops, self.path_spd, path_action_stop, false);

// Initiates bullet pattern
bhpg_pattern_init(shot_amt, 30, 180, 2, 400, 1, 2, 1, 30, 12, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 2, -0.10, 0);
