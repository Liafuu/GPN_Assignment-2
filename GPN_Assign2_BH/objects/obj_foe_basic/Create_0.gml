event_inherited();

// Shot cooldown
self.shot_per_sec = 2;
self.last_shot_time = 0;

// Health
self.health = 20;
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




