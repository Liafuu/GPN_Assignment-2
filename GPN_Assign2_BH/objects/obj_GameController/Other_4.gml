level = new Level()
level.SendFirstWave();

if (!audio_is_playing(snd_stage_bgm) && room == rm_stage) 
	{ audio_play_sound(snd_stage_bgm, 0, true); }

if (room == rm_stage2) {
	global.lives += 2;
}