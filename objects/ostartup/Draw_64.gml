draw_set_font(count_down_font);

draw_set_alpha(0.8)
draw_rectangle_color(550,200,2200,1000,c_black,c_black,c_black,c_black,0)
draw_set_alpha(1)

//This checks to see in what room the player is and then draws the correspondent text to that room.
//if room=(Here goes the room you want) {var str="Here goes the text you want to display"}
if room=rLevel1 {var str="Hello can you help me? I want to lose weight. Are you ready? Then start!"} //If the room is equal to level 1, the yellow text is what is going to be displayed as a message.
if room=rLevel2 {var str="This is level 2! Keep going the good work!"}
if room=rLevel3 {var str="This is level 3! I feel something big coming!"}
//Same thing, you just have to change the room=(your room) and then the yellow text.
//Type \n if you want to break the line of text, as an example "first line\nsecond line" will break the sentence in two lines where \n was typed.

//This draws the text.
draw_set_halign(fa_center);
draw_text_color(camera_get_view_width(0)/2,500,str,c_black,c_black,c_black,c_black,1);
draw_text_color(camera_get_view_width(0)/2,497,str,c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_right);