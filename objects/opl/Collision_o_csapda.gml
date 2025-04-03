if !die 
{
	if(state = 0)
	{
		audio_play_sound(snd_fatman_sebesul, 0, 0);
		hp -= 1;
		hsp = sign(x - other.x) * hsp_knockback;
		vsp = -vsp_knockback;
		state = 1;
	}
}