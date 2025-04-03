// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEMovement()
{
	var cam = view_camera[0];
	var x1 = camera_get_view_x(cam);
	var y1 = camera_get_view_y(cam);
	var x2 = x1 + camera_get_view_width(cam);
	var y2 = y1 + camera_get_view_height(cam);
	if( point_in_rectangle( x, y, x1, y1, x2, y2)) {on=true}
	if !on {hsp=0} else {hsp=myDir*movespeed}
	if distance_to_object(oPlParent)<=350 {follow=true} else {follow=false}
	if follow
	if oPlParent.air=false
	{
	if oPlParent.x>x {myDir=1} else {myDir=-1}
	}
	else
	{
	if place_meeting(bbox_right,y,oSolidParent) && myDir=1 {myDir=-1}
	if place_meeting(bbox_left,y,oSolidParent) && myDir=-1 {myDir=1}
}
	else
	{
		if place_meeting(bbox_right,y,oSolidParent) && myDir=1 {myDir=-1}
		if place_meeting(bbox_left,y,oSolidParent) && myDir=-1 {myDir=1}
	}
}