level = new Level()
level.SendFirstWave();

if (!audio_is_playing(snd_stage_bgm) && room == rm_stage) 
	{ audio_play_sound(snd_stage_bgm, 0, true); }

if (room == rm_stage) {
	global.lives = 3;
	global.bombs = 3;
	global.score = 0;
}
