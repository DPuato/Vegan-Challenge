if on
{
	draw_self()

	var str="Easy"; //Draws what is written inside the button.

	draw_set_font(count_down_font);
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x+125,y+30,str,50,999,1,1,0,c_green,c_green,c_green,c_green,1);
	draw_set_halign(fa_right);
}