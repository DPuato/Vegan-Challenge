if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true} //This checks if there is no collision with the solid parent underneath this object, if there is not, he is in the air (air=true), if there is, he is in the ground (air=false).

if die=false // if not dead then...
{
	if myHp<=0 {die=true} //If myHp is less or equal to 0, this object is dead.
	image_xscale=myDir; //image_xscale turns/mirrors the sprite to the right or the left depending on his direction, if myDir is 1 he looks to the right, if -1 he looks to the left.
	
	if hurt=false //If not hurt then...
	{
		script_execute(scrEMovement); //Executes the basic movement script for enemies.
		sprite_index=chicken_enemy_setal; //This sets the sprite to be used when the enemy is not hurt.
		image_speed=1; //This sets the speed at which the animation plays.
	}
	else //If hurt then...
	{
		hsp=0; //Horizontal speed is equal to zero.
		if alarm[0]=-1 //If the Alarm 0 is not activated then...
		{
			vsp-=3; //Vertical speed is equal to -3, this makes this object jump. Negative speeds are an upwards force. Positive are downwards.
			alarm[0]=30 //Alarm 0 is set to 30 and the countdown starts imediately.
		}
	}
}
else //If dead then...
{
	hsp=0; //Horizontal speed is equal to zero.
	vsp += grav; //This applyes gravity to this object, it means that the vertical speed has an increasing value of grav being added constantly to himself, and as it is a positive value, it's a downwards force.
	if sprite_index!=chicken_enemy_dead //If the sprite is not equal to the enemy being dead, then...
	{
		sprite_index=chicken_enemy_dead; //The sprite is set to the object being dead
		image_index=0 //This makes the animation play from the beggining.
	}
	if air {image_speed=0} else {image_speed=1} //If in the air, the walking animation stops playing, if on the ground, the animation plays normaly.
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