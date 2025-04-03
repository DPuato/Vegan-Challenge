draw_self();

if canClimb || canLift || canBike || canBoat || canLever || canLeverboss {drawE=true} else {drawE=false} //Checks if player is colliding with something that triggers the "Press E to use" message.

// Draws the message.
draw_set_font(calories_font);
draw_set_halign(fa_center)
if drawE
{
	draw_set_color(c_black)
	draw_text_transformed(x-3,y-117,"Press E to use.",0.5,0.5,0)
	draw_set_color(c_white)
	draw_text_transformed(x,y-120,"Press E to use.",0.5,0.5,0)
}
draw_set_halign(fa_right)