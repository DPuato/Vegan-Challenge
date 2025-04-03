/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2D8723CE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_talaj"
function check_talaj() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 299D7B1C
	/// @DnDParent : 2D8723CE
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "global.grav"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_kis_kocka"
	/// @DnDSaveInfo : "object" "o_kis_kocka"
	var l299D7B1C_0 = instance_place(x + 0, y + global.grav, [o_kis_kocka]);
	if ((l299D7B1C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A5BAD04
		/// @DnDParent : 299D7B1C
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_talaj"
		on_talaj = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1DFB4F8A
	/// @DnDParent : 2D8723CE
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58FBE45D
		/// @DnDParent : 1DFB4F8A
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_talaj"
		on_talaj = false;
	}
}