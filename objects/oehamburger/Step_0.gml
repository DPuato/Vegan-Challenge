if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true}
vsp += grav;
if die=false
{
	if myHp<=0 {die=true}
	image_xscale=myDir;
	
	if hurt=false
	{
		script_execute(scrEMovement);
		if hsp=0
		{sprite_index=hamburger_enemy_idle}
		else
		{sprite_index=hamburger_enemy_setal}
		if air {image_speed=0} else {image_speed=1}
	}
	else
	{
		hsp=0;
		if sprite_index!=hamburger_enemy_rogy
		{
			sprite_index=hamburger_enemy_rogy;
			image_index=0;
			image_speed=1;
		}
	}
}
else
{
	hsp=0;
	if sprite_index!=hamburger_enemy_dead
	{
		audio_play_sound(snd_hamburger_halal,0,0);
		sprite_index=hamburger_enemy_dead;
		image_index=0
	}
	image_speed=1
}
//Horizontal Collision
if (place_meeting(x+hsp,y,oSolidParent))
{
    while(!place_meeting(x+sign(hsp),y,oSolidParent)) {x += sign(hsp)}
    hsp = 0;
} x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oSolidParent))
{
    while(!place_meeting(x,y+sign(vsp),oSolidParent)) {y += sign(vsp)}
    vsp = 0;
} y += vsp;