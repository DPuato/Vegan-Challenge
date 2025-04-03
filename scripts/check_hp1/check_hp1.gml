/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05FA78AF
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_hp1"
function check_hp1() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FF33DDA
	/// @DnDParent : 05FA78AF
	/// @DnDArgument : "var" "hp1"
	/// @DnDArgument : "op" "3"
	if(hp1 <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B5C8B18
		/// @DnDParent : 3FF33DDA
		/// @DnDArgument : "expr" "es.DEAD"
		/// @DnDArgument : "var" "state"
		state = es.DEAD;
	}
}