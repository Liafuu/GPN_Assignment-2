// Inherit the parent event
event_inherited();

damage = 0;
pierce = true; // Allows the bullet to hit multiple targets
friendly = true;

i = 0;

shot_per_sec = 15;
last_shot_time = 0;

dist = 0;
max_dist = 200;
shotstart = false;

// Allows the bullet to destroy other bullets
OnDamage = function(bullet) {
	instance_destroy(bullet);
}