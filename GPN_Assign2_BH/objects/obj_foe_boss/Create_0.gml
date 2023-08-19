event_inherited();

// Checks if player clears the phase deathless and bombless
min_lives = 0;
min_bombs = 0;

// Max HP for Healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

// Shot cooldown for phases
shot_per_sec = 8;
shot_per_sec_2 = 0.35;
shot_per_sec_3 = 0.1;

last_shot_time = 0;
last_shot_time_2 = 0;
last_shot_time_3 = 0;

// Checks
i = 0;
i2 = 0;

// Die function
self.Die = function() {
	instance_create(self.x + random_range(-64, 64), self.y + random_range(-64, 64), obj_death_anim);
	instance_create(self.x, self.y, obj_pickup_stage1);
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
	// Switches between each phase
	switch (phase) {
		case 0: self.health = 2200; self.max_health = 2200; ScoreCheck(); 
		CheckLives(); phase++; instance_destroy(obj_bullet); break;
		
		case 1: self.health = 2500; self.max_health = 2500; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break;
		
		case 2: self.health = 2500; self.max_health = 2500; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break;
		
		case 3: self.health = 8000; self.max_health = 8000; ScoreCheck(); 
		CheckLives(); phase++; instance_destroy(obj_bullet); break;
		
		case 4: ScoreCheck(); self.Die(); break;
	}
}

self.BulletChange = function() {
	switch (phase) {
		// Changes the bullet pattern with every phase
		case 1: i = 0; i2 = 0; break;
		
		case 2: i = 0; i2 = 0;
		bhpg_pattern_init(3, 15, 0, 8, 2560, 20, 3, 1, 50, 10, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_main, 3, 0, 0); break;
		
		case 3: i = 0; i2 = 0;
		path_start(self.path_enter, self.path_spd, path_action_stop, false);
		bhpg_pattern_init(1, 0, 0, 4, 1440, 0, 0.2, 1, 10, 16, 0, 0, 0, 0);
		bhpg_bullet_init(obj_bullet_changing, 2, -0.10, 0); break;
		
		case 4: i = 0; i2 = 0;
		path_start(self.path_exit, self.path_spd, path_action_stop, false); break;
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

self.CheckLives = function() {
	min_lives = global.lives;
	min_bombs = global.bombs;
}

self.ScoreCheck = function() {
	if (min_lives == global.lives && min_bombs == global.bombs) {global.score += score_given * 4}
	else if (min_lives == global.lives) {global.score += score_given * 2}
	else if (min_bombs == global.bombs) {global.score += score_given * 2}
	else {global.score += score_given};
}

path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Phase 0
bhpg_pattern_init(2, 10, 0, 8, 2560, 20, 3, 1, 50, 12, 0, 0, 0, 0);
bhpg_bullet_init(obj_bullet_main, 3, 0, 0);