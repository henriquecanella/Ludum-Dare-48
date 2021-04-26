//Places the sequence in the room
function TransitionPlaceSequence(_type) {
	global.paused = true;
	var srfTransition = -999;
	
	
	//if (!surface_exists(srfTransition)) srfTransition = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
	//else surface_resize(srfTransition, surface_get_width(application_surface), surface_get_height(application_surface));
	//surface_set_target(srfTransition);
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),_type);
	//surface_reset_target();
}

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function TransitionStart(_roomTarget, _typeOut, _playerX, _playerY) {
	if (!global.midTransition) {
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		global.roomStartX = _playerX;
		global.roomStartY = _playerY;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		return true;
	}
	else {
		return false;
	}
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom() {
	room_goto(global.roomTarget);
	show_debug_message("Mudou");
	layer_reset_target_room();
}	

function TransitionChanged(_typeIn) {
	TransitionPlaceSequence(_typeIn);
	layer_reset_target_room();
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished() {
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	global.paused = false;
}