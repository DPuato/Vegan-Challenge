var l5C53F394_0 = state;
switch(l5C53F394_0)
{
	case ps.IDLE:
		script_execute(bemenet);
	
		script_execute(mozgas);
	
		script_execute(check_talaj);
	
		script_execute(check_state);
	
		script_execute(check_hp);
	
		script_execute(anim);
		
		script_execute(utkozes);
		
		script_execute(check_ugras);
		break;

	case ps.SETAL:
		script_execute(bemenet);
	
		script_execute(mozgas);
	
		script_execute(check_talaj);
	
		script_execute(check_state);
	
		script_execute(check_hp);
	
		script_execute(anim);
	
		script_execute(utkozes);
	
		script_execute(check_ugras);
	
		script_execute(check_lepes);
		break;

	case ps.BICYCLE:
		script_execute(bemenet);
	
		script_execute(check_talaj);
	
		script_execute(check_state);
	
		script_execute(check_hp);
	
		script_execute(anim);
	
		script_execute(utkozes);
		break;

	case ps.UGRAS:
		script_execute(bemenet);
	
		script_execute(mozgas);
	
		script_execute(check_talaj);
	
		if(on_talaj == true)
		{
			script_execute(scr_create_por);
		
			audio_play_sound(snd_fatman_landolas, 0, 0);
		}
	
		script_execute(check_state);
	
		script_execute(check_hp);
	
		script_execute(anim);
	
		script_execute(utkozes);
	
		script_execute(check_ugras);
		break;

	case ps.KNOCKBACK:
		script_execute(mozgas);
	
		script_execute(check_talaj);
	
		if(vsp > 0)
		{
			if(on_talaj == true)
			{
				script_execute(check_state);
			}
		}
	
		script_execute(check_hp);
	
		script_execute(anim);
	
		script_execute(utkozes);
		break;

	case ps.DEAD:
		script_execute(mozgas);
	
		if(image_index > image_number -1)
		{
			image_speed = 0;
		}
	
		script_execute(anim);
	
		script_execute(utkozes);
		break;
}