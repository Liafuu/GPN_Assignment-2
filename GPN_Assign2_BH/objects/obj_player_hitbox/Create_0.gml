event_inherited();

// To prevent friendly fire
friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;


// Health and IFrame duration
self.health = 5;
self.iframe_time = 0;
self.iframe_dura = 6;


// Invincibility frames
self.Invuln = function() {
	return (self.iframe_time + self.iframe_dura) > (current_time / 1000)
}

// Taking damage
self.OnDamage = function(bullet) {
	if (self.Invuln()) {return;} 
	
	// Takes damage
	self.health -= bullet.damage;
	self.Die();
	
	self.iframe_time = current_time / 1000;
}

// Taking contact damage
self.OnEntityContact = function(entity) {
	if (self.Invuln()) {return;}
	
	// Takes damage
	self.health --;
	self.Die();
	
	self.iframe_time = current_time / 1000;
}

// Collecting lives
self.OnCollection = function(life) {
	self.health++;
	instance_destroy(life);
}

// Resets spawn and destroy all bullets on screen
self.Die = function() {
	instance_destroy(obj_bullet);
}




