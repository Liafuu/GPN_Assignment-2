event_inherited();

// Max HP for Healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

// Shot cooldown for phase 3
shot_per_sec = 8;
shot_per_sec_2 = 0.35;
shot_per_sec_3 = 0.1;

last_shot_time = 0;
last_shot_time_2 = 0;
last_shot_time_3 = 0;

// Checks
i = 0;
p = 0;
i2 = 0;

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
	if (phase_1 == false) {
		self.health = 2200;
		self.max_health = 2200;
		
		phase_1 = true;
		instance_destroy(obj_bullet);
	} else if (phase_2 == false) {
		self.health = 2500;
		self.max_health = 2500;
		
		phase_2 = true;
		instance_destroy(obj_bullet);
	} else if (phase_3 == false) {
		self.health = 3000;
		self.max_health = 3000;
		
		phase_3 = true;
		instance_destroy(obj_bullet);
	} else if (phase_4 == false) { 
		self.health = 8000;
		self.max_health = 8000;
		
		phase_4 = true;
		instance_destroy(obj_bullet);
	} else {
		self.Die();
	}
}

self.BulletChange = function() {
	if (phase_2 == false) {} 
	else if (phase_3 == false) {
		bhpg_pattern_init(3, 15, 0, 8, 2560, 20, 3, 1, 50, 10, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 3, 0, 0);
	} 
	else if (phase_4 == false) { 
		bhpg_pattern_init(3, 25	, 0, 12, 4320, 1, 1.50, 1, 30, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 1.8, 0, 0);
	} else { }
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
bhpg_pattern_init(2, 10, 0, 8, 2560, 20, 3, 1, 50, 12, 0, 0, 0, 0);
bhpg_bullet_init(obj_bullet_main, 3, 0, 0);