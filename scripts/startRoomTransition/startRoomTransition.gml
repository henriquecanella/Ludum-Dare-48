// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartRoomTransition(){
	var __x = clamp(global.roomStartX-view_width/2,0,room_width-view_width)+0.00;
	var __y = clamp(global.roomStartY-view_height/1.4,0,room_height-view_height)+0.00;


	var __xView = camera_get_view_x(view_camera[0])+0.00;
	var __yView = camera_get_view_y(view_camera[0])+0.00;

	if (o_player.x == global.roomStartX && o_player.y == global.roomStartY && global.cameraUpdated == true && round(__x) == round(__xView) && round(__y) == round(__yView)) {
			if (layer_exists("blackScreen")) layer_destroy("blackScreen");
			TransitionChanged(sq_endTransition);
			global.cameraUpdated = false;	
	}
}