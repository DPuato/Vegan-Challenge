if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true}
vsp += grav;
if die=false
{
	if myHp<=0 {die=true}
	image_xscale=myDir;
	
	if hurt=false
	{
		script_execute(scrEMovement);
		sprite_index=pizza_enemy_setal;
		if air {image_speed=0} else {image_speed=1}
	}
	else
	{
		hsp=0;
		sprite_index=pizza_enemy_dead;
		image_index=1;
		image_speed=0;
		if alarm[0]=-1
		{
			vsp-=3;
			alarm[0]=30
		}
	}
}
else
{
	hsp=0;
	if sprite_index!=pizza_enemy_dead
	{
		sprite_index=pizza_enemy_dead;
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