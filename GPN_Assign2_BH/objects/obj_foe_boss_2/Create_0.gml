// Inherit the parent event
event_inherited();

// Checks if player clears the phase deathless and bombless
min_lives = 0;
min_bombs = 0;

// Max HP for Healthbar
self.max_health = self.health
healthbar_width = 91;
healthbar_height = 21;

// Shot cooldown for phases
shot_per_sec = 5;
shot_per_sec_2 = 3;
shot_per_sec_3 = 1;

last_shot_time = 0;
last_shot_time_2 = 0;
last_shot_time_3 = 0;

// Checks
i = 0;
i2 = 0;

// Dies
self.Die = function() {
	instance_destroy(obj_boss_summon_2);
	instance_destroy(obj_boss_summon_3);
	instance_destroy(obj_bullet);
	
	instance_create(self.x, self.y, obj_death_anim);
	instance_destroy();
}

// Changes phase and their HP
self.PhaseChange = function() {
	// Switches between each phase
	switch (phase) {
		case 0: self.health = 2000; self.max_health = 2000; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break; // Goes bottom, Spell
		
		case 1: self.health = 2000; self.max_health = 2000; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break; // Bottom, Non-spell
		
		case 2: self.health = 3000; self.max_health = 3000; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break; // Goes up, Spell
		
		case 3: self.health = 7500; self.max_health = 6000; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break; // Spell
		
		case 4: self.health = 5000; self.max_health = 6000; ScoreCheck();
		CheckLives(); phase++; instance_destroy(obj_bullet); break; // Final Spell
		
		case 5: ScoreCheck(); self.Die(); break;
	}
}

// Changes the bullet patterns whenever the phase changes
self.BulletChange = function() {
	switch (phase) {
		// Changes the bullet pattern with every phase
		case 1: i = 0; i2 = 0; 
		path_start(self.path_enter, self.path_spd, path_action_stop, false);
		
		bhpg_pattern_init(1, 0, 0, 2, 360, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_spawn, 3, 0, 0);
		break;
		
		case 2: i = 0; i2 = 0; break;
		
		case 3: i = 0; i2 = 0; score_given += 7500;
		path_start(self.path_exit, self.path_spd, path_action_stop, false);
		break;
		
		case 4: i = 0; i2 = 0; score_given += 7500;
		bhpg_pattern_init(1, 0, 0, 2, 360, 0, 0, 0, 0, 15, 32, 32, 0, 0);
		bhpg_bullet_init(obj_bullet_spawn_big, 3, 0, 0); break;
		
		case 5: i = 0; i2 = 0; score_given += 15000; break;
	}
}

// Changes to the next phase with every death
self.OnDamage = function(bullet) {
	
	// Takes damage
	if (phase == 3 && instance_number(obj_boss_summon_2) == 2) {
		self.health -= bullet.damage;
	} else if (phase != 3 && path_position == 1) {
		self.health -= bullet.damage;
	}
	
	// Destroys the bullet in contact
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.PhaseChange();
		self.BulletChange();
	}
}

self.Aim = function(player) {
	target = player;
	
	// Randomly set the bullet spawns to a certain x and y position
	random_x = random_range(-64, 64);
	random_y = random_range(-64, 64);
	
	// Set the shot angle
	shot_angle = point_direction(self.x, self.y, target.x + random_range(2, 7), target.y + random_range(2, 7))
}

self.CheckLives = function() {
	min_lives = global.lives;
	min_bombs = global.bombs;
}

self.ScoreCheck = function() {
	if (min_lives <= global.lives && min_bombs == global.bombs) {global.score += score_given * 3}
	else if (min_lives <= global.lives) {global.score += score_given * 2}
	else if (min_bombs == global.bombs) {global.score += score_given * 2}
	else {global.score += score_given};
}


path_start(self.path_enter, self.path_spd, path_action_stop, false);

// Phase 0
bhpg_pattern_init(1, 0, 0, 1, 0, 0, 1.5, 0, 20, 10, 32, 32, 0, 0);
bhpg_bullet_init(obj_bullet_splitting_many, 3, 0, 0);
