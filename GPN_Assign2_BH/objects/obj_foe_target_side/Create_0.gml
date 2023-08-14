event_inherited();

// Method for foe dying
self.Die = function() {
	instance_destroy();
}

// Health
self.health = 12;
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
}

// Aiming at target player
shot_per_sec = 3;
last_shot_time = 0;

self.Aim = function(player) {
	target = player;
	shot_angle = point_direction(self.x, self.y, target.x, target.y)
}

path_start(self.path_side, 4, path_action_stop, false);

