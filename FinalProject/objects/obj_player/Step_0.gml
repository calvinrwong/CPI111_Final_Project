/// @description Insert description here
// You can write your code in this editor
#region; // Get player input

if(hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(ord("W"));
	key_down = keyboard_check(ord("S"));

	//key_left = keyboard_check(vk_left);
	//key_right = keyboard_check(vk_right);
	//key_jump = keyboard_check_pressed(vk_up);
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_down = 0;
}

#endregion // End animation

//	movement calculation
var move = key_right - key_left;

spd_horizontal = move * spd_walk;

spd_vertical = spd_vertical + grv;

#region //collide and move
if(place_meeting(x,y+1, obj_wall)) && (key_jump)
{
	//vertical jump value set 
	spd_vertical = -7;
}


//	horizontal collision
if(place_meeting(x + spd_horizontal, y, obj_wall))
{
	while(!place_meeting(x + sign(spd_horizontal), y, obj_wall))
	{
		x = x + sign(spd_horizontal);
	}
	spd_horizontal = 0;  
}
 
x = x + spd_horizontal;



//	vertical collision
if(place_meeting(x, y + spd_vertical, obj_wall))
{
	while(!place_meeting(x, y + sign(spd_vertical), obj_wall))
	{
		y = y + sign(spd_vertical);
	}
	spd_vertical = 0;
}

y = y + spd_vertical;
#endregion