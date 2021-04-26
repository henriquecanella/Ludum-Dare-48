if (timer > 0) {timer--;}

if (timer == 0)
{
	if(global.levelScore >= global.levelRequirement) {
		global.levelPassed = 1;
	}
	else {
		global.levelPassed = 0;
	}
}
