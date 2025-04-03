/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 03D0941D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_air_index"
function check_air_index() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BC8B143
	/// @DnDParent : 03D0941D
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "op" "1"
	if(vsp < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7ED06420
		/// @DnDParent : 2BC8B143
		/// @DnDArgument : "instvar" "11"
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 088B3A95
	/// @DnDParent : 03D0941D
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 09B6E29C
		/// @DnDParent : 088B3A95
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "instvar" "11"
		image_index = 1;
	}
}