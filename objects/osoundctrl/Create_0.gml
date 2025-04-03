//This object is persisent, it has the global variables for the music and SFX volumes, and also controls what music should play in each level.
globalvar music,sfx;

music=100; //This is the intial volume for the music.
sfx=100; //This is the inital volume for the SFX.

audio_group_load(adgMusic); //This loads all the songs in the audio group called adgMusic.
audio_group_load(adgSFX); //This loads all the songs in the audio group called adgSFX.

audio_group_set_gain(adgMusic,music,0); //This puts all sound files inside adgMusic at the volume set in the variable music.
audio_group_set_gain(adgSFX,sfx,0); //This puts all sound files inside adgSFX at the volume set in the variable SFX.