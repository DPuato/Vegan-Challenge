/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E745050
/// @DnDArgument : "var" "scale"
/// @DnDArgument : "value" "0.01"
var scale = 0.01;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 110510D0
/// @DnDInput : 2
/// @DnDArgument : "value" "scale"
/// @DnDArgument : "value_1" "scale"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
image_xscale = scale;
image_yscale = scale;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 37733657
/// @DnDInput : 2
/// @DnDArgument : "var" "alpha_dec"
/// @DnDArgument : "value" "-0.1"
/// @DnDArgument : "var_1" "scale_inc"
/// @DnDArgument : "value_1" "0.1"
var alpha_dec = -0.1;
var scale_inc = 0.1;