//Player
global.dashCounter = 0;
global.jumpCounter = 0;
global.podePular = 1;
global.usouDash = 0;
global.pulou = 0;


//Transitions
global.midTransition = false;
global.roomTarget = -1;
global.roomStartX = 200;
global.roomStartY = 128;
global.cameraUpdated = false;

//Camera
global.regionPos = 0;
global.borderWith = 0;
global.borderLimit = 160;
global.zoomValue = 1;
//Language
global.language = 1;
global.previous_page = 0;

//Shaders and Particles

//Menu
global.pause = true;

//Keys
global.key_enter	= vk_enter;
global.key_jump		= vk_space;
global.key_right	= ord("D");
global.key_squat	= ord("S");
global.key_left		= ord("A");

//LANGUAGE VARIABLES
enum languages{
	english,
	portuguese,
	spanish
}


enum menu_item {
	i_difficulty,
	i_master_volume,
	i_sound_volume,
	i_music_volume,
	i_language,
	i_resolution,
	i_window_mode
}

//Check OS Language and set to the game.
switch (os_get_language()){
	case "pt": global.language = languages.portuguese; break;
	case "es": global.language = languages.spanish; break;
	default: global.language = languages.english; break;
}

