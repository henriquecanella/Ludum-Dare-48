if (timer > 0) {timer--;}

if (timer == 0)
{
	timer = 0; // This is important, or the timer will trigger every step once it runs out
	if(global.levelScore >= global.levelRequirement) {
		global.levelPassed = 1;
	}
	else {
		global.levelPassed = 0;
	}
}
