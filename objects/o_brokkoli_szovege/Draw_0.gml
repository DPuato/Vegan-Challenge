/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 66F07FE1
/// @DnDArgument : "alpha" "alpha"
draw_set_alpha(alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 70F23BCB
/// @DnDArgument : "font" "pontok"
/// @DnDSaveInfo : "font" "pontok"
draw_set_font(pontok);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 523C3F47
/// @DnDArgument : "color" "$26000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($26000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5E58658C
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""+""
/// @DnDArgument : "var" "szoveg"
draw_text(x + 1, y + 1, string("+") + string(szoveg));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 33785193
/// @DnDArgument : "color" "col"
/// @DnDArgument : "alpha" "false"
draw_set_colour(col & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7617F291
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""+""
/// @DnDArgument : "var" "szoveg"
draw_text(x + 1, y + 1, string("+") + string(szoveg));