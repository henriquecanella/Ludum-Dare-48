if (global.midTransitionAnim == true) {
	if (yStart < camera_get_view_y(view_camera[0])+45) {
		yStart += 1;
	}
	if (yStartScore < camera_get_view_y(view_camera[0])+45) {
		yStartScore += 1;
	}
	if (yStartTotal < camera_get_view_y(view_camera[0])+45) {
		yStartTotal += 1;
	}
	else {
		global.midTransition = false;
		global.endTransitionAnim = true;
	}
}
