/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6989D728
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_lepes"
function check_lepes() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1D5FBCB2
	/// @DnDParent : 6989D728
	/// @DnDArgument : "expr" "floor(image_index) == 1 or floor(image_index) == 5"
	if(floor(image_index) == 1 or floor(image_index) == 5)
	{
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 40803823
		/// @DnDParent : 1D5FBCB2
		/// @DnDArgument : "soundid" "snd_fatman_setal"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "snd_fatman_setal"
		var l40803823_0 = snd_fatman_setal;
		if (!audio_is_playing(l40803823_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4310F1BD
			/// @DnDParent : 40803823
			/// @DnDArgument : "target" "snd"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "soundid" "snd_fatman_setal"
			/// @DnDSaveInfo : "soundid" "snd_fatman_setal"
			var snd = audio_play_sound(snd_fatman_setal, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
			/// @DnDVersion : 1
			/// @DnDHash : 430478C5
			/// @DnDParent : 40803823
			/// @DnDArgument : "sound" "snd"
			/// @DnDArgument : "pitch" "random_range(0.7, 1.3)"
			audio_sound_pitch(snd, random_range(0.7, 1.3));
		}
	}
}