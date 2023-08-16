event_inherited();

// To prevent friendly fire
friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;


// Health, Bombs and IFrame duration
self.health = 5;
self.bomb = 3;
self.iframe_time = 0;
self.iframe_dura = 7;


// Invincibility frames
self.Invuln = function() {
	return (self.iframe_time + self.iframe_dura) > (current_time / 1000)
}

// Taking damage
self.OnDamage = function(bullet) {
	if (self.Invuln()) {return;} 
	
	// Takes damage
	self.Die();
}

// Taking contact damage
self.OnEntityContact = function(entity) {
	if (self.Invuln()) {return;}
	
	self.Die();
}

// Collecting lives
self.OnCollection = function(life) {
	self.health++;
	instance_destroy(life);
}

// Resets spawn and destroy all bullets on screen
self.Die = function() {
	if (instance_number(obj_death_anim) < 1) {
		instance_create(self.x, self.y, obj_death_anim);
	}
	
	if (obj_death_anim.image_alpha <= 0.1) {
		instance_destroy(obj_bullet);
		self.x = 448;
		self.y = 800;
		
		obj_player.x = 448;
		obj_player.y = 800;
		
		self.health --;
		self.iframe_time = current_time / 1000;
	}
}




