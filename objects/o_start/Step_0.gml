image_xscale = 1;
image_yscale = 1;

with(o_start) {
	if (position_meeting(mouse_x, mouse_y, id)) {
        image_xscale = 1.1;
		image_yscale = 1.1;
		
		if (mouse_check_button_pressed(mb_left)) {
			audio_play_sound(menu,1,false);
			room_goto(RoomStart);
		}
	}
}