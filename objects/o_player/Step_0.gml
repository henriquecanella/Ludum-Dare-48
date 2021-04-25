//Get the player's input
key_right = keyboard_check(global.key_right);
//key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(global.key_left);
//original non-variable jumping
key_jump = keyboard_check_pressed(global.key_jump);
//for variable jumping
key_jump_held = keyboard_check(global.key_jump);
//for ledge assistance
is_on_ground = false;
//for jump input buffering
jump_is_inside_buffer = false;


//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp+= grav;

//if you're on the ground, you can jump (base tutorial version)
//if (place_meeting(x,y+1,o_collision))
//{
  //  vsp = key_jump * -jumpspeed;
//}

//For Ledge Assistance with input buffering
if (place_meeting(x,y+1,o_collision))
{
    is_on_ground = true;
    grace_timer = grace_jump_time;
}
else{
    is_on_ground = false;
    grace_timer--;
}

//if you just want to see ledge assistance without input buffering
/*
if (key_jump)
{
    if (is_on_ground || grace_timer >0)
    {
        vsp = key_jump * -jumpspeed;
        grace_timer = 0;
    }
}
*/

//Jump Input Buffering
if (key_jump)
{
    jump_buffer_timer = jump_buffer;
}


if (jump_buffer_timer > 0)
{
    jump_is_inside_buffer = true;
}
else
{
    jump_is_inside_buffer = false;
}
//this is sort of a failsafe for when the buffer frames are set to 0, just use the old jump
if (jump_buffer = 0){
    jump_is_inside_buffer = key_jump;
}
if(jump_is_inside_buffer)
{
    if (is_on_ground || grace_timer >0)
    {
        //vsp = key_jump * -jumpspeed;
        vsp = -jumpspeed;
        grace_timer = 0;
        jump_buffer_timer = 0;
    }
    jump_buffer_timer--;
}

//for variable jumping
if(vsp <0 && !key_jump_held) vsp = max(vsp,0)


//Horizontal Collision
if (place_meeting(x+hsp, y, o_collision))
{
    while(!place_meeting(x+sign(hsp),y,o_collision))
    {
        x+= sign(hsp);
    }
    hsp=0;
}
x += round(hsp);

//Vertical Collision
if (place_meeting(x, y+vsp, o_collision))
{
    while(!place_meeting(x,y+sign(vsp),o_collision))
    {
        y+= sign(vsp);
    }
    vsp=0;
}


y += round(vsp);

sprite_index = s_playerBase;


if (hsp != 0 && is_on_ground == true) {
	sprite_index = s_playerMove;
	image_xscale = sign(hsp);
}
if(is_on_ground == false) {
	sprite_index = s_playerJump;
}

