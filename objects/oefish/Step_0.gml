if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true}
vsp += grav;
if die=false
{
	if myHp<=0 {die=true}
	image_xscale=myDir;
	
	if hurt=false
	{
		script_execute(scrEMovement);
		sprite_index=fish_enemy_setal;
		if air {image_speed=0}
		else
		{
			if hsp=0 {image_speed=0} else {image_speed=1}
			if distance_to_object(oPlParent)<=450 && alarm[1]=-1 {alarm[1]=90}
		}
	}
	else
	{
		hsp=0;
		image_index=0;
		image_speed=0;
		if alarm[0]=-1 {alarm[0]=10}
	}
}
else
{
	hsp=0;
	if sprite_index!=fish_enemy_dead
	{
		sprite_index=fish_enemy_dead;
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