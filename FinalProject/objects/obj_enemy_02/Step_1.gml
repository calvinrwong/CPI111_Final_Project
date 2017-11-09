/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	with (instance_create_layer(x, y, layer, obj_enemy_dead))
	{
		//based on where the damage is coming in from
		direction = other.hitfrom;   
		spd_horizontal = lengthdir_x(3, direction);
		spd_vertical = (lengthdir_y(3, direction)-2);//offset the value upward a little
		if(sign(spd_horizontal) != 0)
		{ 
			image_xscale = -sign(spd_horizontal);
		}
		
	}
	instance_destroy();
}
