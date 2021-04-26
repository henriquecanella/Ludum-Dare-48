player_x = o_player.x-4;
player_y = o_player.y+5;

if (mouse_check_button_pressed(mb_left) && move_pickaxe == false) {
	audio_play_sound(throwPick,1,false);
	alarm[0] = (room_speed * 0.5);
	xx = mouse_x;
	yy = mouse_y;
	move_pickaxe = true;
}

if (move_pickaxe == true && go_back == false) {
	
	
	if (xx != 0 && yy != 0) {
		move_towards_point(xx,yy,spd);
		image_angle += 20;
	}
	else {
		speed = 0;
	}
	
	if (distance_to_point(xx,yy) < spd + 2) {
		xx = 0;
		yy = 0;
		go_back = true;
	}
	
}
else if (go_back == true) {
	move_towards_point(o_player.x-4,o_player.y+5,spd);
	image_angle += 20;
	if (distance_to_point(o_player.x-4,o_player.y+5) <= 0) {
		x = player_x;
		y = player_y;
		go_back = false;
		move_pickaxe = false;
	}
}
else {
	x = player_x;
	y = player_y;
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}