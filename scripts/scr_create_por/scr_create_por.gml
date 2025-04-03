/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7F0D6364
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_create_por"
function scr_create_por() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 714B1281
	/// @DnDParent : 7F0D6364
	/// @DnDArgument : "var" "iranyitas"
	/// @DnDArgument : "value" "true"
	if(iranyitas == true)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6D0176BD
		/// @DnDParent : 714B1281
		/// @DnDArgument : "times" "irandom_range(3, 6)"
		repeat(irandom_range(3, 6))
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25FA69BF
			/// @DnDInput : 2
			/// @DnDParent : 6D0176BD
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "value" "random_range(-20,20)"
			/// @DnDArgument : "var_1" "yy"
			/// @DnDArgument : "value_1" "random_range(-10,5)"
			var xx = random_range(-20,20);
			var yy = random_range(-10,5);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5AEF12FD
			/// @DnDParent : 6D0176BD
			/// @DnDArgument : "xpos" "xx"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom + yy"
			/// @DnDArgument : "var" "inst"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "o_por"
			/// @DnDArgument : "layer" ""por""
			/// @DnDSaveInfo : "objectid" "o_por"
			var inst = instance_create_layer(x + xx, bbox_bottom + yy, "por", o_por);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 437E4E53
			/// @DnDParent : 6D0176BD
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "not" "1"
			if(!(hsp == 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 22B536E3
				/// @DnDParent : 437E4E53
				/// @DnDArgument : "expr" "inst.por_hsp_initial * irany"
				/// @DnDArgument : "var" "inst.hspeed"
				inst.hspeed = inst.por_hsp_initial * irany;
			}
		}
	}
}