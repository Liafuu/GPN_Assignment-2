event_inherited();

// To prevent friendly fire
friendly = true;
player = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;


// Health and IFrame duration
self.health = 3;
self.iframe_time = 0;
self.iframe_dura = 5;


// Invincibility frames
self.Invuln = function() {
	return (self.iframe_time + self.iframe_dura) > (current_time / 1000)
}

// Taking damage
self.OnDamage = function(bullet) {
	if (self.Invuln()) {return;} 
	
	// Takes damage and destroys all bullets on screen
	self.health -= bullet.damage;
	instance_destroy(obj_bullet_main);
	if (self.health <= 0) {
		self.Die();
	}
	
	self.iframe_time = current_time / 1000;
}

// Taking contact damage
self.OnEntityContact = function(entity) {
	if (self.Invuln()) {return;}
	
	// Takes damage when in contact with other entities
	self.health --;
	if (self.health <= 0) {
		self.Die();
	}
	
	self.iframe_time = current_time / 1000;
}

// Collecting lives
self.OnCollection = function(pickup) {
	self.health++;
	//show_debug_message("Stock up! Lives: " + string(self.health));
	instance_destroy(pickup);
}

// Sends a message once ran out of lives
self.Die = function() {
	show_debug_message("You died! pchuuun...");
}




