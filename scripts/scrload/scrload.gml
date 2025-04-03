function scrLoad()
{
	ini_open("saveData.ini"); //This opens the saved file.
	//Now it will set the global variables as the same values as they where saved.
	hp = ini_read_real("Variables","hp",0); //The third value here will set the score variable if there is no save file
	gyumolcs = ini_read_real("Variables","gyumolcs",0);
	music = ini_read_real("Variables","music",0); //The third value here will set the score variable if there is no save file
	sfx = ini_read_real("Variables","sfx",0);
	diff = ini_read_real("Variables","diff",0);
	ini_close();
	game_load("Save.dat") //This loads all the other non global variables.
}