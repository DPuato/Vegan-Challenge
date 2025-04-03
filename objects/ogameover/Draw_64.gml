draw_set_font(game_over_font);

draw_set_alpha(0.8)
draw_rectangle_color(270,200,2500,1050,c_black,c_black,c_black,c_black,0)
draw_set_alpha(1)

var str="Congratulations!\nYou have successfully lost weight and completed your mission!\nGame Over!";

//This draws the text.
draw_set_halign(fa_center);
draw_text_transformed_color(camera_get_view_width(0)/2,500,str,1.5,1.5,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(camera_get_view_width(0)/2,497,str,1.5,1.5,0,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_right);