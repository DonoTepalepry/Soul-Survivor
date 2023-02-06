
if(control)
{
	var change = keyboard_check(vk_right) - keyboard_check(vk_left);
	if (change != 0)
	{
		change *= 0.01;
		music_volume = clamp(music.music_volume+change,0,1)
	}
	
	change = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	if (change != 0)
	{
		change *= 0.01;
		sfx_volume = clamp(sfx_volume+change,0,1)
		audio_group_set_gain(soundfx,sfx_volume,0)
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		control = false;
		if (++music_target > 3) music_target = 0;
		audio_play_sound(music[music_target],1000,true)
		audio_sound_gain(music[music_target],0,0)
		audio_sound_gain(music[music_target],music_volume,1000)
		audio_sound_gain(music_playing,0,1000)
	}
	
	if (keyboard_check_pressed(vk_enter)) && (sfx_loaded)
	{
		audio_play_sound(sfx[irandom(3)],10,false);
	}
}
else
{
	//if a fade is complete, update now playing
	if (audio_sound_get_gain(music_playing) == 0)
	{
		audio_stop_sound(music_playing);
		music_playing = music[music_target];
		audio_group_set_gain(o_music,music_volume,0)
		control = true
	}
}