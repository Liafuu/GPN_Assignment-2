event_inherited();

friendly = true;

// Movement

key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;

// Shot cooldown

shot_per_sec = 15;
last_shot_time = 0;

// Health and IFrame duration
self.health = 3;
self.iframe_time = 0;
self.iframe_dura = 5;

self.OnDamage = function(bullet) {
	if ((self.iframe_time + self.iframe_dura) > (current_time / 1000)) return; 
	
	// Takes damage and destroys all bullets on screen
	self.health -= bullet.damage;
	instance_destroy(obj_bullet_main);
	if (self.health <= 0) {
		self.Die();
	}
	
	self.iframe_time = current_time / 1000;
}

self.Die = function() {
	show_debug_message("You died! pchuuun...");
}