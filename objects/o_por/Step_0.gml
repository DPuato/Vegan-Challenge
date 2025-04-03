/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CCD145F
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "not" "1"
if(!(hspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0096A16A
	/// @DnDParent : 0CCD145F
	/// @DnDArgument : "value" "hspeed * por_lassulas"
	/// @DnDArgument : "instvar" "4"
	hspeed = hspeed * por_lassulas;
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 64DF0E5A
/// @DnDInput : 3
/// @DnDArgument : "value" "scale_dec"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "value_1" "scale_dec"
/// @DnDArgument : "value_relative_1" "1"
/// @DnDArgument : "value_2" "alpha_dec"
/// @DnDArgument : "value_relative_2" "1"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
/// @DnDArgument : "instvar_2" "13"
image_xscale += scale_dec;
image_yscale += scale_dec;
image_alpha += alpha_dec;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77452EE4
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A616A25
	/// @DnDParent : 77452EE4
	instance_destroy();
}