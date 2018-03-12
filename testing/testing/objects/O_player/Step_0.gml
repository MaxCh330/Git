if keyboard_check(ord("A"))
{
	hspeed_=-5;
}else if keyboard_check(ord("D"))
{
	hspeed_=5;
}else
{
	hspeed_=0;
}
if !place_meeting(x, y+1, O_wall)
{
	vspeed_ =vspeed_+gravity_;
}
else 
{
	if keyboard_check_pressed(vk_space)
    {
	vspeed_=-10;
    } 
}

if place_meeting(x+hspeed_,y,O_wall)
{
	while !place_meeting(x+sign(hspeed_),y,O_wall)
	{
		x+=sign(hspeed_);
	}
	hspeed_=0;
}
x=x+hspeed_;


if place_meeting(x,y+vspeed_,O_wall)
{
	while !place_meeting(x,y+sign(vspeed_),O_wall)
	{
		y+=sign(vspeed_);
	}
	vspeed_=0;
}

y=y+vspeed_;