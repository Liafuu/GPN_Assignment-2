friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;

// Shot cooldown
shot_per_sec = 15;
last_shot_time = 0;

bomb_cd = 1;
last_bomb_time = 0;


// Creates a bomb, clearing the screen and deal massive damage
bombs = 3; // Bomb amount
b = 0; // Index
bomb_use = false; // Triggers the bomb shooting pattern if true

self.Bomb = function() {
	bomb_use = true;
	b = 0;
}