if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true} //This checks if there is no collision with the solid parent underneath this object, if there is not, he is in the air (air=true), if there is, he is in the ground (air=false).

if die=false // if not dead then...
{
	if myHp<=0 {die=true} //If myHp is less or equal to 0, this object is dead.
	image_xscale=-myDir; //image_xscale turns/mirrors the sprite to the right or the left depending on his direction, if myDir is 1 he looks to the right, if -1 he looks to the left.
	
	if hurt=false //If not hurt then...
	{
		vsp=myDir*movespeed; //Horizontal speed is equal to my direction (-1 for left, 1 for right) multiplicated by my moving speed, this means he will move horizontally to the right or left at the speed in movespeed.
	}
	else //If hurt then...
	{
		vsp=0; //Horizontal speed is equal to zero.
		if alarm[0]=-1 //If the Alarm 0 is not activated then...
		{
			vsp-=3; //Vertical speed is equal to -3, this makes this object jump. Negative speeds are an upwards force. Positive are downwards.
			alarm[0]=30 //Alarm 0 is set to 30 and the countdown starts imediately.
		}
	}
}
else //If dead then...
{
	instance_destroy(); //Destroys the object.
	vsp=0; //Horizontal speed is equal to zero.
	vsp += grav; //This applyes gravity to this object, it means that the vertical speed has an increasing value of grav being added constantly to himself, and as it is a positive value, it's a downwards force.
}
//Horizontal Collision
if (place_meeting(x+hsp,y,oSolidParent))
{
    while(!place_meeting(x+sign(hsp),y,oSolidParent)) {x += sign(hsp)}
    hsp = 0;
	myHp-=1
} x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oSolidParent))
{
    while(!place_meeting(x,y+sign(vsp),oSolidParent)) {y += sign(vsp)}
    vsp = 0;
	myHp-=1
} y += vsp;