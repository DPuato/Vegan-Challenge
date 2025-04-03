/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 22481E1E
/// @DnDArgument : "value" "rise"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "1"
y += rise;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FBC0FB6
/// @DnDArgument : "var" "time_to_fade--"
/// @DnDArgument : "op" "3"
if(time_to_fade-- <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AD8DDBB
	/// @DnDParent : 6FBC0FB6
	/// @DnDArgument : "expr" "alpha_inc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "alpha"
	alpha += alpha_inc;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AD97152
	/// @DnDParent : 6FBC0FB6
	/// @DnDArgument : "var" "alpha"
	/// @DnDArgument : "op" "3"
	if(alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2E2D8FCA
		/// @DnDParent : 7AD97152
		instance_destroy();
	}
}