/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2F462DF8
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "mozgas"
function mozgas() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3958E1CF
	/// @DnDParent : 2F462DF8
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += global.grav;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AA66C94
	/// @DnDParent : 2F462DF8
	/// @DnDArgument : "expr" "hsp*drag"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp*drag;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 182F9B0B
	/// @DnDParent : 2F462DF8
	/// @DnDArgument : "var" "abs(hsp)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.2"
	if(abs(hsp) < 0.2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03151D76
		/// @DnDParent : 182F9B0B
		/// @DnDArgument : "var" "hsp"
		hsp = 0;
	}
}