event_inherited();

// To prevent friendly fire
friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;

// Health, Bombs and IFrame duration
self.health = 3;
self.iframe_time = 0;
self.iframe_dura = 6;
self.dead = false;


// Invincibility frames
Invuln = function() {
	return (self.iframe_time + self.iframe_dura) > (current_time / 1000)
}

// Taking damage
OnDamage = function(bullet) {
	if (self.Invuln()) {return;} 
	
	// Takes damage
	self.Die();
}

// Taking contact damage
OnEntityContact = function(entity) {
	if (self.Invuln()) {return;}
	
	self.Die();
}

// Collecting lives
OnCollection = function(life) {
	self.health++;
	instance_destroy(life);
}

// Resets spawn and destroy all bullets on screen
Die = function() {
	if (instance_number(obj_death_anim) = 0 && self.dead == false) {
		instance_create(self.x, self.y, obj_death_anim);
		obj_death_anim.player = true;
		
		audio_play_sound(snd_player_dies, 0, false);
	}
}

Update = function() {
	if (self.dead) {
		instance_destroy(obj_bullet);
		
		// Resets the player's position
		obj_player.x = xstart;
		obj_player.y = ystart;
		
		self.health--; // Take damage
		obj_player.bombs = 3; // Always have 3 bombs every life
		self.dead = false;
		self.iframe_time = current_time / 1000;
	}
}




