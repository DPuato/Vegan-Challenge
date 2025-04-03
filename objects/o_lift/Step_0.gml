if myImageIndex>3 {myImageIndex=0; canMove=0}

if on
{
	sprite_index=s_lift2;
	if canMove
	{
		if direction=90 {vsp=-mySpeed}
		if direction=270 {vsp=+mySpeed}
	}
	else
	{
		myImageIndex=0;
		vsp=0;
	}
}
else
{
	sprite_index=s_lift;	
}

if (place_meeting(x+hsp,y,oSolidParent))
{
    while(!place_meeting(x+sign(hsp),y,oSolidParent)) {x += sign(hsp)}
    hsp = 0;
	if canMove {canMove=false}
} x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oSolidParent))
{
    while(!place_meeting(x,y+sign(vsp),oSolidParent)) {y += sign(vsp)}
    vsp = 0;
	if canMove {canMove=false}
} y += vsp;