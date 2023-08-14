event_inherited();

// Health
self.health = 400;
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		// Destroys foe once their hp hits 0
		instance_destroy();
	}
}

// Initiates bullet pattern
bhpg_pattern_init(5, 30, 180, 2, 400, 0, 2, 1, 30, 15, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 3, -0.20, 0);
