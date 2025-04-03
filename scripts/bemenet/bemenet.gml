// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bemenet() 
{
	ugras = false;
	up = false;

	if(iranyitas == true)
	{
		var l34011EFA_0;
		l34011EFA_0 = keyboard_check(vk_right);
		if (l34011EFA_0)
		{
			hsp = setal_spd;
		}
		
		var l6CD6477F_0;
		l6CD6477F_0 = keyboard_check(vk_left);
		if (l6CD6477F_0)
		{
			hsp = -setal_spd;
		}
		
		var l40B448BB_0;
		l40B448BB_0 = keyboard_check(vk_up);
		if (l40B448BB_0)
		{
			up = maszas_spd;
		}
	
		var l04AE7BAC_0;
		l04AE7BAC_0 = keyboard_check(vk_down);
		if (l04AE7BAC_0)
		{
			down = -maszas_spd;
		}
	
		var l1381F1D4_0;
		l1381F1D4_0 = keyboard_check(vk_space);
		if (l1381F1D4_0)
		{
			ugras = true;
		}
	}
}