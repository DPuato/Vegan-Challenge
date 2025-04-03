draw_set_font(count_down_font);
if gyumolcs<=0
{
	var str="You are out of calories and cannot move!";
	draw_set_halign(fa_center);
	draw_text_color(display_get_gui_width()/2,500,str,c_black,c_black,c_black,c_black,1);
	draw_text_color((display_get_gui_width()/2)+2,497,str,c_red,c_red,c_red,c_red,1);
	draw_set_halign(fa_right);
}