var l5C53F394_0 = state;
switch(l5C53F394_0)
{
	case es.SETAL:
		if(hsp == 0)
		{
			irany = irany * -1;
		}
	
		hsp = setal_spd*irany;
	
		script_execute(mozgas);
	
		script_execute(check_hp1);
	
		script_execute(anim_hamburger);
	
		script_execute(utkozes);
		break;

	case es.ROGY:
		script_execute(check_hp1);
	
		script_execute(anim_hamburger);
		break;

	case es.DEAD:
		if(image_index > image_number -1)
		{
			image_speed = 0;
		
			if(image_index >= 2 and !fall_sound_played)
			{
				audio_play_sound(snd_hamburger_halal, 0, 0);
			
				fall_sound_played = true;
			}
		}
	
		script_execute(anim_hamburger);
	
		script_execute(utkozes);
		break;
}