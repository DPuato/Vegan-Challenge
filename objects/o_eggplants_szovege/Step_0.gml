y += rise;

if(time_to_fade-- <= 0)
{
	alpha += alpha_inc;

	if(alpha <= 0)
	{
		instance_destroy();
	}
}