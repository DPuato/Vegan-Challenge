draw_self()

if myType=0 {var str="Play"}
if myType=1 {var str="Load"}
if myType=2 {var str="Music"}
if myType=3 {var str="SFX"}
if myType=4 {var str="Credits"}
if myType=5 {var str="Exit"}

draw_set_font(count_down_font);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(x+125,y+30,str,50,999,1,1,0,c_green,c_green,c_green,c_green,1);
draw_set_halign(fa_right);