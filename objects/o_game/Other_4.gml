var zene = ds_map_find_value(zene_map, room);

var l13F9CC16_0 = zene;
if (!audio_is_playing(l13F9CC16_0))
{
	audio_stop_sound(current_zene);

	current_zene = audio_play_sound(zene, 0, 1);
}