/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 06C720B1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_ugras"
function check_ugras() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F4DC01C
	/// @DnDParent : 06C720B1
	/// @DnDArgument : "var" "on_talaj"
	/// @DnDArgument : "value" "true"
	if(on_talaj == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1918AAC2
		/// @DnDParent : 0F4DC01C
		/// @DnDArgument : "var" "ugras"
		/// @DnDArgument : "value" "true"
		if(ugras == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68DEC5BF
			/// @DnDParent : 1918AAC2
			/// @DnDArgument : "expr" "-ugras_spd"
			/// @DnDArgument : "var" "vsp"
			vsp = -ugras_spd;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5E57462F
			/// @DnDParent : 1918AAC2
			/// @DnDArgument : "script" "scr_create_por"
			/// @DnDSaveInfo : "script" "scr_create_por"
			script_execute(scr_create_por);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0FC073A4
			/// @DnDParent : 1918AAC2
			/// @DnDArgument : "soundid" "snd_fatman_ugras"
			/// @DnDSaveInfo : "soundid" "snd_fatman_ugras"
			audio_play_sound(snd_fatman_ugras, 0, 0, 1.0, undefined, 1.0);
		}
	}
}