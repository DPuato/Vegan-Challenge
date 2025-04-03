var l45513C6C_0 = false;
l45513C6C_0 = instance_exists(o_game);
if(!l45513C6C_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", o_game);
}

var l598BCA5C_0 = false;
l598BCA5C_0 = instance_exists(o_fatman);
if(!l598BCA5C_0)
{
	instance_create_layer(x + 0, y + 0, "fatman", o_fatman);
}

room_goto_next();