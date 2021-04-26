//Transitions
global.midTransition = false;
global.roomTarget = -1;
global.roomStartX = 200;
global.roomStartY = 128;
global.cameraUpdated = false;
global.beginTransitionAnim = true;
global.midTransitionAnim = false;
global.endTransitionAnim = false;
global.paused = false;

//Keys
global.key_enter	= vk_enter;
global.key_jump		= vk_space;
global.key_right	= ord("D");
global.key_squat	= ord("S");
global.key_left		= ord("A");

//Score
global.totalScore = 0;
global.levelScore = 0;
global.levelRequirement = 0;
global.levelTimer = 0;
global.levelPassed = -1;
global.maxScore = -1;
global.concluded = -1;
window_set_cursor(cr_none);
cursor_sprite = s_cursor;