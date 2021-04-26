if (global.beginTransitionAnim == true) {
	o_elevator.image_speed = 0;
	if (x < 60) {
	x += 1;
	}
	else {
		sprite_index = s_playerBase;
		global.midTransitionAnim = true;
	}
}

if (global.endTransitionAnim == true) {
	sprite_index = s_playerLoose;
	if (image_index == image_number - 1){
		image_speed = 0;
		global.endTransitionAnim = false;
		TransitionStart(goto,sq_startTransition,playerX,playerY);
	}
}