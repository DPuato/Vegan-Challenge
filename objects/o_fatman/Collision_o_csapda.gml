if(!(state == ps.DEAD))
{
	if(!(bbox_bottom < other.bbox_top ) && vsp > 0)
	{
		with(other) {
			instance_create_layer(x + 0, bbox_top, "FX", o_boom);
		}
	}

	else
	{
		if(state != ps.KNOCKBACK && alarm[0] <= 0)
		{
			audio_play_sound(snd_fatman_sebesul, 0, 0);
		
			hp += -1;
		
			hsp = sign(x - other.x) * hsp_knockback;
		
			vsp = -vsp_knockback;
		
			state = ps.KNOCKBACK;
		}
	}
}