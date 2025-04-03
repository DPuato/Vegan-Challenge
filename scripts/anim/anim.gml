/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 68BF2558
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "anim"
function anim() 
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
		/// @DnDHash : 268E5880
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 6CD942DD
			/// @DnDParent : 268E5880
			/// @DnDArgument : "value" "spr_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_idle;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 537B1EF2
			/// @DnDParent : 268E5880
			/// @DnDArgument : "script" "check_irany"
			/// @DnDSaveInfo : "script" "check_irany"
			script_execute(check_irany);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2991CCFE
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.SETAL"
		case ps.SETAL:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3B685370
			/// @DnDParent : 2991CCFE
			/// @DnDArgument : "value" "spr_setal"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_setal;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0DA2EA0E
			/// @DnDParent : 2991CCFE
			/// @DnDArgument : "script" "check_irany"
			/// @DnDSaveInfo : "script" "check_irany"
			script_execute(check_irany);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2C7F1F5C
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.UGRAS"
		case ps.UGRAS:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5FAED48F
			/// @DnDParent : 2C7F1F5C
			/// @DnDArgument : "value" "spr_ugras"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_ugras;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 06264898
			/// @DnDParent : 2C7F1F5C
			/// @DnDArgument : "script" "check_irany"
			/// @DnDSaveInfo : "script" "check_irany"
			script_execute(check_irany);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5AF4915A
			/// @DnDParent : 2C7F1F5C
			/// @DnDArgument : "script" "check_air_index"
			/// @DnDSaveInfo : "script" "check_air_index"
			script_execute(check_air_index);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7EE88FEC
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.KNOCKBACK"
		case ps.KNOCKBACK:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7E4D1C5D
			/// @DnDParent : 7EE88FEC
			/// @DnDArgument : "value" "spr_hurt"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_hurt;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1EAC14C9
			/// @DnDParent : 7EE88FEC
			/// @DnDArgument : "script" "check_air_index"
			/// @DnDSaveInfo : "script" "check_air_index"
			script_execute(check_air_index);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5C4B505D
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.MASZAS"
		case ps.MASZAS:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4BB94B7F
			/// @DnDParent : 5C4B505D
			/// @DnDArgument : "value" "spr_maszas"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_maszas;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4B2322A8
		/// @DnDParent : 15285539
		/// @DnDArgument : "const" "ps.DEAD"
		case ps.DEAD:
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 0C1E5194
			/// @DnDParent : 4B2322A8
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 6A17BB80
				/// @DnDParent : 0C1E5194
				/// @DnDArgument : "value" "spr_dead"
				/// @DnDArgument : "instvar" "10"
				sprite_index = spr_dead;
			break;
	}
}