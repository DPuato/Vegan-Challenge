// hatter lapozasa
// get reteg id
var layer_id = layer_get_id("Background_1");

// lapozas sebeseg
var scroll_speed = 0.1;

//reteg mozgasa
layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);

//timer
if (mytime >0)
{
	mytime=mytime-delta_time/1000000;

} else mytime=0;
showTime =ceil(mytime);

if (mytime < 0)
{
room_restart();

}