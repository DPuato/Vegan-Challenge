//This are the buttons that control the player.
if instance_exists(oEHamburgerelite)
{
if oEHamburgerelite.die=true
{
if !place_meeting(x,y,o_leverboss) {canLeverboss=false} else {canLeverboss=true}
}
}

kUp = keyboard_check(vk_up);
kDown = keyboard_check(vk_down);
kRight = keyboard_check(vk_right);
kLeft = -keyboard_check(vk_left);
kUpPress = keyboard_check_pressed(vk_up);
kDownPress = keyboard_check_pressed(vk_down);
kRightPress = keyboard_check_pressed(vk_right);
kLeftPress = keyboard_check_pressed(vk_left);
kUse = keyboard_check_pressed(ord("E"));
kJump = keyboard_check_pressed(vk_space);

move = kLeft + kRight; //move is equal to the left and right keys, so when they are pressed it knows if you are pressing right or left.
move2 = (-kUp) + kDown; //Same thing, but for up and down.

if canHurt=false && alarm[2]=-1 {alarm[2]=5}


if hp<=0 {die=true} //Dies if hp is less than 0.
if place_meeting(x,y+1,oSolidParent) {air=false} else {air=true} //Checks to see if player is on the air or ground. If there is no collision under the player, air equals true, if not air equals false.
if !place_meeting(x,y,o_ladder) {canClimb=false} else {canClimb=true} //Checks to see if player is colliding with the stairs, if yes he can climb.
if !place_meeting(x,y+1,o_lift) {canLift=false} else {canLift=true} //Checks to see if player is colliding with the lift, if yes he can use it.
if !place_meeting(x,y,o_bicycle) {canBike=false} else {canBike=true} //Checks to see if player is colliding with the bycicle, if yes he can use it.
if !place_meeting(x,y+1,o_kenu) {canBoat=false} else {canBoat=true} //Checks to see if player is colliding with the boat, if yes he can use it.
if !place_meeting(x,y,o_lever) {canLever=false} else {canLever=true} //Checks to see if player is colliding with the bridge lever, if yes he can use it.

if !air {if canPor {instance_create_depth(x,y+80,0,o_por); canPor=false}} else {canPor=true}

if die=false //If not dead
{
if state=0 //if normal
{
	vsp += grav; //This gives gravity to the player. The value of grav is added to the vertical speed every frame.
	hsp = move * movespeed; //Makes the player move horizontally at the speed set at movespeed in the direction set in move.
	if move!=0 {image_xscale=move} //If move is not zero, which means left or right is being pressed, the image_xscale equals move, this makes the player sprite turn torwards where he is moving, either right(1) or left(-1).
	if ! air //If not on the air
	{
		image_speed=1; //Animation plays at this speed.
		if kJump=true {audio_play_sound(snd_fatman_ugras,0,0); instance_create_depth(x,y+80,0,o_por); vsp = kJump * -jumpspeed} //If the key to jump is pressed, smoke effect is created and the vertical speed equals negative jumpspeed. Negative values move up, positive down.
		if hsp=0 {sprite_index=fatman_idle} //If horizontal speed is zero, player plays the idle animation.
		else {sprite_index=fatman_setal} //But is the oposite is true, he plays the walking animation. The command "else" means the oposite.
	}
	else //But if on air
	{
		sprite_index=fatman_ugras; //Play jumping animation.
		if vsp<0 {image_index=0} //If vertical speed is negative keep the animation at the first frame.
		if vsp>0 {image_index=1} //If vertical speed is positive keep the animation at the second frame.
	}
	if kUse //If the key to use is pressed, in this case it is E.
	{
		if gyumolcs>0 //if the variable gyumlocs is bigger than 0, then ...
		{
			if canClimb {state=2} //If player can climb the ladder, then the state changes to 2.
			if canLift {state=3} //If player can use the lift, then the state changes to 3.
			if canBike {state=4} //If player can use the bicycle, then change state to 4.
			if canBoat {state=5} //If player can use the boat, state is 5.
			if canLever //If can use the bridge lever.
			{
				var a=instance_nearest(x,y,o_lever); //Checks the nearest instance of the lever and calls it "a".
				if a.canOn //if the variable canOn for "a" is true, then...
				{
					state=6;
					gyumolcs-=3;
					a.on=true;
				}
			}
			if canLeverboss //If can use the bridge lever.
			{
				var a=instance_nearest(x,y,o_leverboss); //Checks the nearest instance of the lever and calls it "a".
				if a.canOn //if the variable canOn for "a" is true, then...
				{
					state=7;
					gyumolcs-=3;
					a.on=true;
				}
			}
			kUse=false; //Sets the use button as not being pressed anymore, this prevents from the other state accidentaly thinking that E is still being pressed, which would for example make the player automatically exit the bicycle.
		}
		else if canClimb || canLift || canBike || canBoat || canLever //But if gyumloc is equal to zero then...
		{
			instance_create_depth(x,y,0,oWarningScreen) //Activate the screen warning that the player is out of calories.
		}
	}
}
if state=1 //if hurt
{
	vsp += grav;
	sprite_index=fatman_hurt;
	if alarm[0]=-1 {alarm_set(0, immune_time)} //
}
if state=2 //if climbing ladder
{
	sprite_index=fatman_maszas;
	var a=instance_nearest(x,y,o_ladder); //Detects the nearest instance of o_ladder and calls it "a".
	x=a.x; //makes the x coordinate of the player be equal to the x coordinate of"a", this locks the player horizontally at the ladder.
	
	if movLad=0 //If not moving on ladder.
	{
		vsp=0;
		if gyumolcs>0 
		{
			if kUpPress || kDownPress //If player presses up or down.
			{
				gyumolcs-=3;
				vsp = move2 * movespeed; //This makes the player be able to move up and down just like the code in state=0 "hsp = move * movespeed".
				movLad=1; //Start moving and lock player in a moving state.
			}
		}
		else {state=0}
	}
	if movLad=1 {if alarm[1]=-1 {alarm[1]=30}} //If moving on ladder, set the alarm to stop moving.
	
	if vsp=0 {image_speed=0} //If the vertical speed is 0, the animation stops.
	if vsp>0 {image_speed=1.5} //If the vertical speed is bigger than 0 the animation starts.
	if vsp<0 {image_speed=-1.5} //If the vertical speed is smaller than 0 the animation plays in reverse.
	
	hsp = 0; //Stop horizontal movement
	if canClimb=false {state=0} //If not colliding with the stairs anymore, go back to normal.
	if kUse {state=0} //If E is pressed, go back to normal.
}
if state=3 //if on lift
{
	visible=0; //Turn invisible, the animation of the player is displayed in the lift itself.
	vsp = 0;
	hsp = 0;
	var a=instance_nearest(x,y,o_lift) //Detects the nearest instance of o_lift and calls it "a".
	a.on=true; //Turns the lift on.
	x=a.x-26; //Locks the player at this position, it's +67 so the player is exactly at the middle of the lift at all times.
	y=a.y-54;
	if a.canMove=false //If the variable for "a" called canMove is not true, then...
	{
		if gyumolcs>0 //if there are calories
		{
			if kUpPress {gyumolcs-=3; a.canMove=true; a.direction=90} //if Press up, "a" can move at 90 degrees, that is upwards.
			if kDownPress {gyumolcs-=3; a.canMove=true; a.direction=270} //if Press down, "a" can move at 270 degrees, that is downwards.
		}
		else // if there are not calories
		{
			visible=1; // turn visible
			a.on=false; // The lift, that is called "a" turns off.
			state=0 //go back to normal.
		}
		if kUse //If press E, same thing.
		{
			visible=1;
			a.on=false;
			state=0
		}
	}
}
if state=4 //if on Bike
{
	//The code is identical to the lift.
	visible=0;
	vsp = 0;
	hsp = 0;
	var a=instance_nearest(x,y,o_bicycle)
	a.on=true;
	x=a.x;
	y=a.y-50;
	if a.canMove=false
	{
		if gyumolcs>0
		{
			if kRightPress {gyumolcs-=3; a.canMove=true; a.direction=0}
			if kLeftPress {gyumolcs-=3; a.canMove=true; a.direction=180}
		}
		else
		{
			visible=1;
			a.on=false;
			state=0
		}
		if kUse
		{
			visible=1;
			a.on=false;
			state=0
		}
	}
	if kUse
	{
		visible=1;
		a.on=false;
		state=0
	}
}
if state=5 //if on Boat
{
	//The code is identical to the lift.
	visible=0;
	vsp = 0;
	hsp = 0;
	var a=instance_nearest(x,y,o_kenu)
	a.on=true;
	x=a.x;
	y=a.y-110;
	if a.canMove=false
	{
		if gyumolcs>0
		{
			if kRightPress {gyumolcs-=3; a.canMove=true; a.direction=0}
			if kLeftPress {gyumolcs-=3; a.canMove=true; a.direction=180}
		}
		else
		{
			visible=1;
			a.on=false;
			state=0
		}
		if kUse
		{
			visible=1;
			a.on=false;
			state=0
		}
	}
	if kUse
	{
		visible=1;
		a.on=false;
		state=0
	}
}
if state=6 //if on bridge lever
{
	//The code is identical to the lift, but is less complicated because there is no movement.
	visible=0;
	vsp = 0;
	hsp = 0;
	var a=instance_nearest(x,y,o_lever);
	if a.on=false
	{
		visible=1;
		state=0
	}
}
if state=7 //if on bridge lever
{
	//The code is identical to the lift, but is less complicated because there is no movement.
	visible=0;
	vsp = 0;
	hsp = 0;
	var a=instance_nearest(x,y,o_leverboss);
	if a.on=false
	{
		visible=1;
		state=0
	}
}

}
else //If dead
{
	vsp += grav; //This gives gravity to the player. The value of grav is added to the vertical speed every frame.
	hsp=0; //Horizotnal speed equals zero.
	if sprite_index!=fatman_dead //If the animation for dying is not playing, then...
	{
		sprite_index=fatman_dead; //Play animation for dying;
		image_index=0; //Set the animation to play from the beggining (frame 0).
		image_speed=1 //At this speed.
	}
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oSolidParent))
{
    while(!place_meeting(x+sign(hsp),y,oSolidParent)) {x += sign(hsp)}
    hsp = 0;
} x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oSolidParent))
{
    while(!place_meeting(x,y+sign(vsp),oSolidParent)) {y += sign(vsp)}
    vsp = 0;
} y += vsp;