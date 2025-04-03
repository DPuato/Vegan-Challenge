if(!(state == ps.DEAD))
{
	if(!(other.state == es.DEAD))
	{
		if(!(bbox_bottom < other.bbox_top ) && vsp > 0)
		{
			audio_play_sound(snd_hit_enemy, 0, 0);
		
			vsp = -ugras_spd;
		
			alarm_set(0, immune_time);
		
			with(other) {
				instance_create_layer(x + 0, bbox_top, "FX", o_boom);
			
				state = es.ROGY;
			
				alarm_set(0, 20);
			
				hp1 += -1;
			
				if(hp1_max == 0)
				{
					hsp = 0;
				
					image_index = 0;
				
					state = es.DEAD;
				}
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
}