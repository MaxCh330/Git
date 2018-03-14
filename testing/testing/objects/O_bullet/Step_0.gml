


if place_meeting(x+hspeed_bullet,y,O_wall)
{
	sprite_index=S_bullet_stop_idle;
	wall = true;
	while !place_meeting(x+sign(hspeed_bullet),y,O_wall)
	{
		x+=sign(hspeed_bullet);
	}
	hspeed_bullet=0;
	
}

x+=hspeed_bullet;
