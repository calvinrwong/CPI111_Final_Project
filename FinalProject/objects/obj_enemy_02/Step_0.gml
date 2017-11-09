/// @description Insert description here
// You can write your code in this editor

//	movement calculation
//var move = key_right - key_left;

//spd_horizontal = move * spd_walk;

spd_vertical = spd_vertical + grv;

//	horizontal collision
if(place_meeting(x + spd_horizontal, y, obj_wall))
{
	while(!place_meeting(x + sign(spd_horizontal), y, obj_wall))
	{
		x = x + sign(spd_horizontal);
	 }
	spd_horizontal = -spd_horizontal;
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
