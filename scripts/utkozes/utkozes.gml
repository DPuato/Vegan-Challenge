/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 62DE1DF1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "utkozes"
function utkozes() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3B55CF7C
	/// @DnDParent : 62DE1DF1
	/// @DnDArgument : "x" "hsp"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_kis_death"
	/// @DnDSaveInfo : "object" "o_kis_death"
	var l3B55CF7C_0 = instance_place(x + hsp, y + 0, o_kis_death);
	if ((l3B55CF7C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D88E0D3
		/// @DnDParent : 3B55CF7C
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "true"
		var collide = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15ED947A
		/// @DnDParent : 3B55CF7C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hp"
		hp += -1;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2606B8BB
		/// @DnDParent : 3B55CF7C
		room_restart();
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7428769E
	/// @DnDParent : 62DE1DF1
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vsp"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_kis_kocka"
	/// @DnDSaveInfo : "object" "o_kis_kocka"
	var l7428769E_0 = instance_place(x + 0, y + vsp, o_kis_kocka);
	if ((l7428769E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20E09988
		/// @DnDParent : 7428769E
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 5436C197
		/// @DnDParent : 7428769E
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 13FD1D08
			/// @DnDParent : 5436C197
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vsp)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_kis_kocka"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_kis_kocka"
			var l13FD1D08_0 = instance_place(x + 0, y + sign(vsp), o_kis_kocka);
			if (!(l13FD1D08_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 624AA364
				/// @DnDParent : 13FD1D08
				/// @DnDArgument : "expr" "sign(vsp)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(vsp);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 51C40D1C
			/// @DnDParent : 5436C197
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 09CD2504
				/// @DnDParent : 51C40D1C
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 58590925
				/// @DnDParent : 51C40D1C
				/// @DnDArgument : "var" "vsp"
				vsp = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 528CF18D
	/// @DnDParent : 62DE1DF1
	/// @DnDArgument : "expr" "vsp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vsp;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 112BA184
	/// @DnDParent : 62DE1DF1
	/// @DnDArgument : "x" "hsp"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_kis_kocka"
	/// @DnDSaveInfo : "object" "o_kis_kocka"
	var l112BA184_0 = instance_place(x + hsp, y + 0, o_kis_kocka);
	if ((l112BA184_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45EB9E33
		/// @DnDParent : 112BA184
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 54EF2AF0
		/// @DnDParent : 112BA184
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 05DD3B03
			/// @DnDParent : 54EF2AF0
			/// @DnDArgument : "x" "sign(hsp)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_kis_kocka"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_kis_kocka"
			var l05DD3B03_0 = instance_place(x + sign(hsp), y + 0, o_kis_kocka);
			if (!(l05DD3B03_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4B0757E6
				/// @DnDParent : 05DD3B03
				/// @DnDArgument : "expr" "sign(hsp)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(hsp);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 2C342EA2
			/// @DnDParent : 54EF2AF0
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7E150820
				/// @DnDParent : 2C342EA2
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0A5F34AD
				/// @DnDParent : 2C342EA2
				/// @DnDArgument : "var" "hsp"
				hsp = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55488CE2
	/// @DnDParent : 62DE1DF1
	/// @DnDArgument : "expr" "hsp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += hsp;
}