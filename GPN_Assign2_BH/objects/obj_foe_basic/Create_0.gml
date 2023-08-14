event_inherited();

// Method for foe dying
self.Die = function() {
	instance_destroy();
}

// Health
self.health = 25;
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
}

path_start(self.path_enter, 2, path_action_stop, false);

// Initializes the bullet pattern
bhpg_pattern_init(1, 0, 270, 6, 1800, 0, 2, 1, 10, 50, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 5, 0, 0);


