if image_index>5 {canMove=false; myImageIndex=0}

if on
{
	if canMove
	{
		if myImageIndex>3 {canMove=false}
		if direction=0 {hsp=mySpeed; image_xscale=1}
		if direction=180 {hsp=-mySpeed; image_xscale=-1}
	}
	else
	{
		myImageIndex=0;
		hsp=0;
	}
}
else
{
	hsp=0;
	vsp+=grav;
	image_xscale=1;
	myImageIndex=0;
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