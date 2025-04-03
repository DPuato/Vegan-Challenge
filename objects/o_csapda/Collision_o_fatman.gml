/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 06002EDE
/// @DnDInput : 2
/// @DnDArgument : "expr" "state != ps.KNOCKBACK"
/// @DnDArgument : "expr_1" "alarm[0] <= 0"
if(state != ps.KNOCKBACK && alarm[0] <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 38A3F4F7
	/// @DnDParent : 06002EDE
	/// @DnDArgument : "soundid" "snd_fatman_sebesul"
	/// @DnDSaveInfo : "soundid" "snd_fatman_sebesul"
	audio_play_sound(snd_fatman_sebesul, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48BA8874
	/// @DnDParent : 06002EDE
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	hp += -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4219AA4C
	/// @DnDParent : 06002EDE
	/// @DnDArgument : "expr" "sign(x - other.x) * hsp_knockback"
	/// @DnDArgument : "var" "hsp"
	hsp = sign(x - other.x) * hsp_knockback;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C974BBA
	/// @DnDParent : 06002EDE
	/// @DnDArgument : "expr" "-vsp_knockback"
	/// @DnDArgument : "var" "vsp"
	vsp = -vsp_knockback;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 018C1194
	/// @DnDParent : 06002EDE
	/// @DnDArgument : "expr" "ps.KNOCKBACK"
	/// @DnDArgument : "var" "state"
	state = ps.KNOCKBACK;
}