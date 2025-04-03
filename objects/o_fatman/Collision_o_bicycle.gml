/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1360F3DB
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 319CB7AB
	/// @DnDParent : 1360F3DB
	/// @DnDArgument : "object" "o_bicycle"
	/// @DnDSaveInfo : "object" "o_bicycle"
	var l319CB7AB_0 = instance_place(0, 0, o_bicycle);
	if ((l319CB7AB_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06CBF66D
		/// @DnDParent : 319CB7AB
		/// @DnDArgument : "expr" "ps.BICYCLE"
		/// @DnDArgument : "var" "state"
		state = ps.BICYCLE;
	}
}