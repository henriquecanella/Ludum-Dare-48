/// @description Everytime a new room starts, the view get enabled

//Initialize Player Position on every room
if(room != RoomMenu && room != RoomStart && room != RoomWin1 && room != RoomLoose1&& room != RoomWin2 && room != RoomLoose2&& room != RoomWin3 && room != RoomLoose3&& room != RoomWin4 && room != RoomLoose4&& room != RoomWin5 && room != RoomLoose5 && room != Room6){
	o_player.x = global.roomStartX;
	o_player.y = global.roomStartY;
	//o_player.state = playerState.transition;
}

view_enabled = true;
view_visible[0] = true;

/// @description 

#macro view view_camera[0]

camera_set_view_size(view, view_width, view_height);

if(instance_exists(o_player)){
	var _x = clamp(o_player.x-view_width/2,0,room_width-view_width);
	var _y = clamp(o_player.y-view_height/1.4,0,room_height-view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = .25;
	
	//Set position
	camera_set_view_pos(view,
						lerp(_cur_x, _x, _spd),
						lerp(_cur_y, _y, _spd));
														
	global.cameraUpdated = true;
}
