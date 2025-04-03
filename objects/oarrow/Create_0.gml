myHp=1; //This is the health value of this enemy, he can only take one hit.
grav = 0.2; //This is the gravity.
hsp = 0; //This is just for initialization, it keeps track of the horizontal speed of the object.
vsp = 0; //This is just for initialization, it keeps track of the vertical speed of the object.
movespeed = 7; //This is the speed that this object moves at, basically it's the walking speed.
myDir=-1; //This is just for initialization, it keeps track if the object is moving right(1) or left(-1).

air=false; //This is just for initialization, it keeps track if the object is in the air or in the ground.

hurt=false; //This is just for initialization, it keeps track if the object has been damaged and is currently in his hurt state.

die=false; //This is just for initialization, it keeps track if the object has died.

if oPlParent.x>x {myDir=1} else {myDir=-1} //This makes the enemy follow the player, if the player's X coordinate is bigger than mine, then the player is to the right (myDir=1), if not then he is to the left (myDir=-1).