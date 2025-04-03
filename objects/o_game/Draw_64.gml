draw_set_font(count_down_font);

draw_set_colour($AE000000 & $ffffff);
var l7BBD3DA6_0=($AE000000 >> 24);
draw_set_alpha(l7BBD3DA6_0 / $ff);

draw_text(420, 25, string("REMAINING TIME: ") + string(string(showTime)));

draw_set_colour($FF141BE5 & $ffffff);
var l36BA8F5B_0=($FF141BE5 >> 24);
draw_set_alpha(l36BA8F5B_0 / $ff);

draw_text(422, 22, string("REMAINING TIME: ") + string(string(showTime)));

script_execute(calories_pontok);