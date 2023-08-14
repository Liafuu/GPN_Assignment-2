event_inherited();

// Method for foe dying
self.Die = function() {
	instance_create_depth(self.x, self.y, self.depth + 1, obj_pickup);
	instance_destroy();
}

// Health
self.health = 20;
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
}

// Initializes the bullet pattern
bhpg_pattern_init(1, 0, 270, 6, 1800, 0, 0, 1, 30, 30, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 5, 0, 0);


