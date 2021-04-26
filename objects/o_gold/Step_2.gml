if (collect_gold == true) {
	x = o_pickaxe.x;
	y = o_pickaxe.y;
	
	if(place_meeting(x+4,y+4,o_player) || place_meeting(x-4,y-4,o_player)) {
		global.levelScore += 10;
		global.totalScore += 10;
		instance_destroy();
	}
}