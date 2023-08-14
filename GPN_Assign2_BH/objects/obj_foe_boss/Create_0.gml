event_inherited();

// Shot cooldown
shot_per_sec = 4;
last_shot_time = 0;

// Phases
phase_0 = false;
phase_1 = false;
phase_2 = false;
phase_3 = false;

// Method for foe dying
self.Die = function() {
	if (will_drop) {
		life_pickup = instance_create(self.x, self.y, obj_pickup);
		life_pickup.image_xscale = 4;
		life_pickup.image_yscale = 4;
	}
	instance_destroy();
}

// Phase Changing
self.PhaseChange = function() {
	if (phase_1 == false) {
		self.health = 2200;
		phase_1 = true;
		instance_destroy(obj_bullet_main);
	} else if (phase_2 == false) {
		self.health = 2500;
		phase_2 = true;
		instance_destroy(obj_bullet_main);
	} else if (phase_3 == false) {
		self.health = 2200;
		phase_3 = true;
		instance_destroy(obj_bullet_main);
	} else { 
		self.Die(); 
		instance_destroy(obj_bullet_main);
	}
}

self.BulletChange = function() {
	if (phase_2 == false) {
		bhpg_pattern_init(3, 20, 270, 6, 2160, 0, 1, 1, 15, 25, 32, 32, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 3, -0.1, 1);
	} else if (phase_3 == false) {
		bhpg_pattern_init(8, 70	, 0, 4, 1200, 1, 1, 1, 40, 19, 32, 32, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 2, 0, 0);
	} else { 
		bhpg_pattern_init(3, 25	, 0, 12, 4320, 1, 1.50, 1, 30, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_foe_bullet, 1.8, 0, 0);
	}
}

// Taking Damage
self.OnDamage = function(bullet) {
	
	// Takes damage
	self.health -= bullet.damage;
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.PhaseChange();
		self.BulletChange();
	}
}

// Phase 0
bhpg_pattern_init(2, 10, 0, 8, 2560, 20, 2, 1, 50, 20, 0, 0, 0, 0);
bhpg_bullet_init(obj_foe_bullet, 3, 0, 0);