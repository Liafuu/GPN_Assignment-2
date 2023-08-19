event_inherited();

self.seen_in_room = false;

// Method for foe dying
self.Die = function() {
	if (will_drop) {
		life_pickup = instance_create(self.x, self.y, obj_pickup);
		life_pickup.image_xscale = 4;
		life_pickup.image_yscale = 4;
	}
	
	global.score += score_given;
	instance_destroy();
}

// Taking damage in contact with bullet
self.OnDamage = function(bullet) {
	
	// Taking damage
	if (path_stop && self.path_position == 1) {
		self.health -= bullet.damage;
	} else if (!path_stop) {
		self.health -= bullet.damage;
	}
	
	// Destroys the bullet in contact
	if (bullet.pierce == false) {instance_destroy(bullet)};
	if (self.health <= 0) {
		self.Die();
	}
}


