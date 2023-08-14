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

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Initializes the bullet pattern
bhpg_pattern_init(1, 0, 270, 1, 300, 0, 2, 1, 10, 50, 16, 16, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 5, 0, 0);


