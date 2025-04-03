/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C6CAC70
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_state"
function check_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C8DCA37
	/// @DnDParent : 7C6CAC70
	/// @DnDArgument : "var" "on_talaj"
	/// @DnDArgument : "value" "true"
	if(on_talaj == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B95FBFC
		/// @DnDParent : 0C8DCA37
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6AECC954
			/// @DnDParent : 2B95FBFC
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 404525F3
		/// @DnDParent : 0C8DCA37
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75DC3C26
			/// @DnDParent : 404525F3
			/// @DnDArgument : "expr" "ps.SETAL"
			/// @DnDArgument : "var" "state"
			state = ps.SETAL;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 065CA4D6
	/// @DnDParent : 7C6CAC70
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70554277
		/// @DnDParent : 065CA4D6
		/// @DnDArgument : "expr" "ps.UGRAS"
		/// @DnDArgument : "var" "state"
		state = ps.UGRAS;
	}
}