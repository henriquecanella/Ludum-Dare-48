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
	o_elevator.image_speed = 1;
	if (o_elevator.image_index == o_elevator.image_number - 1){
		o_elevator.image_speed = 0;
	}
		
	if (x < 105) {
		sprite_index = s_playerMove;
		x += 1;
	}
	else {
		sprite_index = s_playerBase;
		global.endTransitionAnim = false;
		TransitionStart(goto,sq_startTransition,playerX,playerY);
	}
}