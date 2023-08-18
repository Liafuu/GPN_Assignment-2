level = new Level()
level.SendFirstWave();

if (!audio_is_playing(snd_stage_bgm)) { audio_play_sound(snd_stage_bgm, 0, true); }


