

/// @description 

#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if(instance_exists(o_player)){
		var _x = clamp(o_player.x-view_width/2,0,room_width-view_width);
		var _y = clamp(o_player.y-view_height/1.4,0,room_height-view_height);
	
		_cur_x = camera_get_view_x(view);
		_cur_y = camera_get_view_y(view);
	
		_spd = .15;

		//Set position
		
		camera_set_view_pos(view,
			lerp(_cur_x, _x, _spd),
			lerp(_cur_y, _y, _spd)
		);

					
	
		
	//Set transition					
	StartRoomTransition();
	
}
