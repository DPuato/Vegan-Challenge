/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 572B1294
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_irany"
function check_irany() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 420EB88E
	/// @DnDParent : 572B1294
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "not" "1"
	if(!(hsp == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27D053BD
		/// @DnDParent : 420EB88E
		/// @DnDArgument : "var" "hsp"
		/// @DnDArgument : "op" "2"
		if(hsp > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DFEAF9C
			/// @DnDParent : 27D053BD
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "irany"
			irany = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 546C6856
		/// @DnDParent : 420EB88E
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E4C483E
			/// @DnDParent : 546C6856
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "irany"
			irany = -1;
		}
	}
}