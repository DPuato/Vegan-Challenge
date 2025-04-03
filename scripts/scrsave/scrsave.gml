function scrSave()
{
	ini_open("saveData.ini"); //This opens the save file.
	//Now it will write the global variables.
	ini_write_string("Variables","hp",hp); //The first value is the title for that section, the second value is the label for your variable in the INI file, and the third value is the actual variable.
	ini_write_string("Variables","gyumolcs",gyumolcs);
	ini_write_string("Variables","music",music);
	ini_write_string("Variables","sfx",sfx);
	ini_write_string("Variables","diff",diff);
	ini_close(); //Remember to close the INI or you'll have a memory leak.
	game_save("Save.dat") //This saves all the other non global variables in the room.
}