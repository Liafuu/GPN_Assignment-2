event_inherited();

// Max HP for Healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

// Shot cooldown for phase 3
shot_per_sec = 6;
shot_per_sec_2 = 6;
shot_per_sec_3 = 6;
shot_per_sec_4 = 6;

last_shot_time = 0;
last_shot_time_2 = 0;
last_shot_time_3 = 0;
last_shot_time_4 = 0;

// Checks
i = 0;
i2 = 0;
i3 = 0;
i4 = 0;

// Die function
self.Die = function() {
	instance_create(self.x + random_range(-64, 64), self.y + random_range(-64, 64), obj_death_anim);
	instance_destroy();
}

// Set the angle to target player
self.Aim = function(player) {
	target = player;
	
	// Randomly set the bullet spawns to a certain x and y position
	random_x = random_range(-64, 64);
	random_y = random_range(-64, 64);
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(2, 7), target.y + random_range(2, 7))
}

// Phase Changing
self.PhaseChange = function() {
	switch (phase) {
		case 0: self.health = 2500; self.max_health = 2500; phase++; instance_destroy(obj_bullet); break;
		case 1: instance_destroy(obj_boss_summon); path_start(self.path_exit, self.path_spd + 3, path_action_stop, false); break;
	}
}

self.BulletChange = function() {
	switch (phase) {
		case 1: 
		instance_create (self.x - 64, self.y - 64 , obj_boss_summon)
		instance_create (self.x + 64, self.y - 64 , obj_boss_summon)
		instance_create (self.x - 64, self.y + 64 , obj_boss_summon)
		instance_create (self.x + 64, self.y + 64 , obj_boss_summon)
		break;
		case 2: break;
	}
}

// Taking Damage
self.OnDamage = function(bullet) {
	
	// Takes damage
	if (path_position == 1) {
		self.health -= bullet.damage;
	}
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.PhaseChange();
		self.BulletChange();
	}
}

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Phase 0
bhpg_pattern_init(1, 0, 0, 20, 7200, 0, 1, 1, 30, 12, 32, 32, 0, 0);
bhpg_bullet_init(obj_bullet_main, 3, 0, 0);