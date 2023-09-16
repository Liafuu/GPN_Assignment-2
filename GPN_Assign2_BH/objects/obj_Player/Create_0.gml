friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;

// Shot cooldown
shot_per_sec = 15;
last_shot_time = 0;
last_shot_time_2 = 0;

bomb_cd = 0.45;
last_bomb_time = 0;


// Creates a bomb, clearing the screen and deal massive damage
b = 0; // Index
bomb_use = false; // Triggers the bomb shooting pattern if true
bomb_focus = false;

self.Bomb = function(focusing) {
	if (focusing) {bomb_focus = true;}
	bomb_use = true;
	b = 0;
}

// Collecting lives
OnCollection = function(life) {
	global.lives++;
	global.score += 10000;
	instance_destroy(life);
}