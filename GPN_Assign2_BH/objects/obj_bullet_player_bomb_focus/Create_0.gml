// Inherit the parent event
event_inherited();

damage = 3.3;
pierce = true;
friendly = true;

OnDamage = function(bullet) {
	instance_destroy(bullet);
}


