if myType=0 {room_goto(rLevel1)} //Starts the game from the first level. You can change the room to any other.
if myType=1 //Load game.
{
	ini_open("saveData.ini"); //This opens the saved file.
	//Now it will set the global variables as the same values as they where saved.
	hp = ini_read_real("Variables","hp",0); //The third value here will set the score variable if there is no save file
	gyumolcs = ini_read_real("Variables","gyumolcs",0);
	music = ini_read_real("Variables","music",0); //The third value here will set the score variable if there is no save file
	sfx = ini_read_real("Variables","sfx",0);
	ini_close();
	game_load("Save.dat") //This loads all the other non global variables.
}
if myType=2 {myDisplay=!myDisplay}
if myType=3 {myDisplay=!myDisplay}
if myType=5 {game_end()} //Exit game.