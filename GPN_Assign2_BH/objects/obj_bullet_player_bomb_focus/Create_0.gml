// Inherit the parent event
event_inherited();

damage = 3.5;
pierce = true;
friendly = true;

OnDamage = function(bullet) {
	instance_destroy(bullet);
}


