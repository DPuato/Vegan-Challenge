/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C53F394
/// @DnDArgument : "expr" "state"
var l5C53F394_0 = state;
switch(l5C53F394_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 50A38E57
	/// @DnDParent : 5C53F394
	/// @DnDArgument : "const" "es.SETAL"
	case es.SETAL:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 307A98FB
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "var" "hsp"
		if(hsp == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4EF159EB
			/// @DnDParent : 307A98FB
			/// @DnDArgument : "expr" "irany * -1"
			/// @DnDArgument : "var" "irany"
			irany = irany * -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 595ADB1D
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "expr" "setal_spd*irany"
		/// @DnDArgument : "var" "hsp"
		hsp = setal_spd*irany;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0C83B54D
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "script" "mozgas"
		script_execute(mozgas);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E911A9D
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "script" "check_hp1"
		script_execute(check_hp1);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 78CE9B1D
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "script" "anim_hamburger"
		script_execute(anim_hamburger);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 31A09D43
		/// @DnDParent : 50A38E57
		/// @DnDArgument : "script" "utkozes"
		script_execute(utkozes);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7302FAE7
	/// @DnDParent : 5C53F394
	/// @DnDArgument : "const" "es.ROGY"
	case es.ROGY:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 78A46261
		/// @DnDParent : 7302FAE7
		/// @DnDArgument : "script" "check_hp1"
		script_execute(check_hp1);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 414081F5
		/// @DnDParent : 7302FAE7
		/// @DnDArgument : "script" "anim_hamburger"
		script_execute(anim_hamburger);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 14CC5A34
	/// @DnDParent : 5C53F394
	/// @DnDArgument : "const" "es.DEAD"
	case es.DEAD:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FB39A3C
		/// @DnDParent : 14CC5A34
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number -1"
		if(image_index > image_number -1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53D8203D
			/// @DnDParent : 5FB39A3C
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3B1F64F4
			/// @DnDParent : 5FB39A3C
			/// @DnDArgument : "expr" "image_index >= 2 and !fall_sound_played"
			if(image_index >= 2 and !fall_sound_played)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 1C09353B
				/// @DnDParent : 3B1F64F4
				/// @DnDArgument : "soundid" "snd_hamburger_halal"
				audio_play_sound(snd_hamburger_halal, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 441EA1FE
				/// @DnDParent : 3B1F64F4
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "fall_sound_played"
				fall_sound_played = true;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 447D8E43
		/// @DnDParent : 14CC5A34
		/// @DnDArgument : "script" "anim_hamburger"
		script_execute(anim_hamburger);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 63B34329
		/// @DnDParent : 14CC5A34
		/// @DnDArgument : "script" "utkozes"
		script_execute(utkozes);
		break;
}