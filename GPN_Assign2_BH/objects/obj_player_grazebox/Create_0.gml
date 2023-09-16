// To prevent friendly fire
friendly = true;

// Movement
key_hor = 0;
key_vert = 0;
focus = false;
player_spd = 1;

i = 0;

OnGraze = function(bullet) {
	if (bullet.has_grazed != true && !obj_player_hitbox.Invuln()) {
		audio_play_sound(snd_player_graze, 1, false);
		global.score += 50;
		bullet.has_grazed = true;
	}
}







