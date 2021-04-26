/// @description Initialize Variables
grav = 0.2;
hsp = 0; //horizontal speed
vsp = 0; //vertical speed
jumpspeed = 3.1;
movespeed = 1.2;
//for ledge assistance 
grace_jump_time = 10; //number of grace period frames after leaving the ground you can still jump
grace_timer = grace_jump_time;
//for input buffering
jump_buffer = 10; //number of grace period frames between player pressing jump and hitting the ground when they will still jump
jump_buffer_timer = jump_buffer;


