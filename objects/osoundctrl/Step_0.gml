if room=s_menu //If the room is s_menu then...
{
	if !audio_is_playing(Arcade_Puzzler) //if the music Arcade_Puzzler is not playing then...
	{
		audio_stop_all(); //Stop all sounds, this is so no music from another level overlaps.
		audio_play_sound(Arcade_Puzzler,0,1) //Play the song Arcade_Puzzler, the 1 at the end is so the song loops when it ends, if 0 it stops.
	}
}
//The same logic applies to the rest.
if room=rLevel1
{
	if !audio_is_playing(Its_Always_Sunny_in_the_80s)
	{
		audio_stop_all();
		audio_play_sound(Its_Always_Sunny_in_the_80s,0,1)
	}
}

if room=rLevel2
{
	if !audio_is_playing(Arcade_Puzzler)
	{
		audio_stop_all();
		audio_play_sound(Arcade_Puzzler,0,1)
	}
}