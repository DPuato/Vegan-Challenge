/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32E19F34
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "es.DEAD"
if(!(state == es.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DB9F867
	/// @DnDParent : 32E19F34
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "ps.DEAD"
	if(!(other.state == ps.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 76A17619
		/// @DnDInput : 2
		/// @DnDParent : 0DB9F867
		/// @DnDArgument : "expr" "bbox_bottom < other.bbox_top -1"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "expr_1" "vsp > 0"
		if(!(bbox_bottom < other.bbox_top -1) && vsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78F0874A
			/// @DnDParent : 76A17619
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "hp1"
			hp1 += -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4DAEFA55
			/// @DnDParent : 76A17619
			/// @DnDArgument : "expr" "es.DEAD"
			/// @DnDArgument : "var" "state"
			state = es.DEAD;
		}
	}
}