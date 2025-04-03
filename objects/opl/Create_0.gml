///Initialize Variables
grav = 0.7; //The heaviness of the gravity, the higher the number, the heavier it is.
hsp = 0;
vsp = 0;
jumpspeed = 18; //This is the speed of the jump. The higher the number, the higher the player will jump.
movespeed = 6; //How fast the player runs.
air=false;
canHurt=true;
hurt=false;
die=false;
canLeverboss=false;


canPor=true; //Initializes the smoke when the player jumps.
canClimb=false; //Initializes what makes the player climb stairs.
canLift=false; //Initializes what makes the player use the lift.
canBike=false; //Initializes what makes the player use the bicycle.
canBoat=false; //Initializes what makes the player use the boat.

movLad=0;

drawE=false;

immune_time=30; //How long the player stays hurt.
hsp_knockback=9;
vsp_knockback=2;
state=0; //Instead of using scripts or enums, I am using a variable that defines the state that the player is, this is simpler to use since the player object does not have so many states.

// Just for initialization
kUp = keyboard_check(ord("W"));
kDown = keyboard_check(ord("S"));
kRight = keyboard_check(ord("D"));
kLeft = -keyboard_check(ord("A"));
move = kLeft + kRight;
move2 = kUp + kDown;

instance_create_depth(x,y,0,oStartup); //Creates the message to be displayed at the start of the level.
