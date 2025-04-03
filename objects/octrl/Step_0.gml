if gyumolcs<=0 {gyumolcs=0}

//This is a conversion into GML of your code.
// hatter lapozasa
// get reteg id
var layer_id = layer_get_id("Background_1");

// lapozas sebeseg
var scroll_speed = 0.1;

//reteg mozgasa
layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);

//If timer ends, create message.
if (mytime > 0)
{mytime=mytime-delta_time/1000000}
else {mytime=0}
showTime =ceil(mytime);


if (mytime < 0)  {instance_create_depth(x,y,0,oOutoftime)} //If timer ends, restart level.