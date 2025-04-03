//This is a conversion in GML language of what you had put in. It draws the hearts, the timer and calories counter on screen.

xx = 2300;
yy = 25;
var gap = 80;
if hp > 0
{
	for (var i = 0; i < hp; i++)
	{
		draw_sprite(s_healt_bar, 0, xx + i * gap, yy);
	}
}


draw_set_font(count_down_font);
draw_set_halign(fa_left);

draw_set_colour($AE000000 & $ffffff);
draw_text(50, 25, string("REMAINING TIME: ") + string(string(showTime)));

draw_set_colour($FF141BE5 & $ffffff);
draw_text(50, 22, string("REMAINING TIME: ") + string(string(showTime)));


draw_set_font(calories_font);
draw_set_halign(fa_center);

draw_set_colour($AE000000 & $ffffff);
draw_text(display_get_gui_width()/2, 23, string("Calories: ") + string(gyumolcs));

draw_set_colour($FF35B242 & $ffffff);
draw_text(display_get_gui_width()/2-2, 20, string("Calories: ") + string(gyumolcs));

draw_set_halign(fa_right);