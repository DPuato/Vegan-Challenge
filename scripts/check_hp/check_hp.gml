/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05FA78AF
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_hp"
function check_hp() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FF33DDA
	/// @DnDParent : 05FA78AF
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B5C8B18
		/// @DnDParent : 3FF33DDA
		/// @DnDArgument : "expr" "ps.DEAD"
		/// @DnDArgument : "var" "state"
		state = ps.DEAD;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7573E14A
		/// @DnDParent : 3FF33DDA
		/// @DnDArgument : "soundid" "snd_fatman_halal"
		/// @DnDSaveInfo : "soundid" "snd_fatman_halal"
		audio_play_sound(snd_fatman_halal, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5210187D
		/// @DnDParent : 3FF33DDA
		/// @DnDArgument : "steps" "90"
		alarm_set(0, 90);
	
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 10381A1D
		/// @DnDParent : 3FF33DDA
		game_restart();
	}
}