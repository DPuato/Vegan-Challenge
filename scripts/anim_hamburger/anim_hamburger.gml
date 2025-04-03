/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 68BF2558
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "anim_hamburger"
function anim_hamburger() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 15285539
	/// @DnDParent : 68BF2558
	/// @DnDArgument : "expr" "state"
	var l15285539_0 = state;
	switch(l15285539_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2991CCFE
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "es.SETAL"
		case es.SETAL:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3B685370
			/// @DnDParent : 2991CCFE
			/// @DnDArgument : "value" "spr_setal"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_setal;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 30BE14BE
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "es.ROGY"
		case es.ROGY:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 78DF3C47
			/// @DnDParent : 30BE14BE
			/// @DnDArgument : "value" "spr_rogy"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_rogy;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 757E44E0
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "es.DEAD"
		case es.DEAD:
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B495814
			/// @DnDParent : 757E44E0
			/// @DnDArgument : "var" "hp1"
			/// @DnDArgument : "op" "3"
			if(hp1 <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 05F31DC6
				/// @DnDParent : 7B495814
				/// @DnDArgument : "expr" "es.DEAD"
				/// @DnDArgument : "var" "state"
				state = es.DEAD;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6346FF48
				/// @DnDParent : 7B495814
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 52B4CB8D
			/// @DnDParent : 757E44E0
			/// @DnDArgument : "value" "spr_dead"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_dead;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6D786B60
			/// @DnDParent : 757E44E0
			/// @DnDArgument : "script" "check_irany"
			/// @DnDSaveInfo : "script" "check_irany"
			script_execute(check_irany);
			break;
	}
}