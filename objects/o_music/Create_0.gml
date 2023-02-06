audio_play_sound(bgm, 1000, true);


audio_group_load(menuMusic);
audio_group_load(soundfx);

music_playing = bgm;
music = [bgm];
sfx = [snd_menu_switch];

music_volume = 1;
sfx_volume = 1;

control = false;
music_target = 0;
sfx_loaded = false;