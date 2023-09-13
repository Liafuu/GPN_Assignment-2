// Inherit the parent event
event_inherited();

damage = 2;
pierce = true; // Allows the bullet to hit multiple targets
friendly = true;

// Allows the bullet to destroy other bullets
OnDamage = function(bullet) {
	instance_destroy(bullet);
}