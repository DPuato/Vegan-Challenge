// fatman allapot
enum ps {
	IDLE,
	SETAL,
	UGRAS,	
	KNOCKBACK,
	MASZAS,
	BICYCLE,
	DEAD
}

// hamburger allapot
enum es {
	IDLE,
	SETAL,
	DEAD,
	KOVET,
	ROGY
}

mytime=100;
showTime=mytime;

global.fatman_start_x = 65;
global.fatman_start_y = 417;
global.fatman_irany = 1;

zene_map = ds_map_create();

ds_map_replace(zene_map, s_szint1, Its_Always_Sunny_in_the_80s);

ds_map_replace(zene_map, s_szint2, Arcade_Puzzler);

current_zene = 0;