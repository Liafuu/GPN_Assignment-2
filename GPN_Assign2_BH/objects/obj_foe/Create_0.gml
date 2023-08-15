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

// Taking Damage
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
}


