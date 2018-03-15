if keyboard_check(ord("A"))
{
	image_xscale=-1;
	sprite_index=S_player_walk;
	hspeed_=-5;
}else if keyboard_check(ord("D"))
{
	image_xscale=1;
	sprite_index=S_player_walk;
	hspeed_=5;
}else
{
	
	sprite_index=S_player_idle_side;
	hspeed_=0;
}
if !place_meeting(x, y+5, O_wall)
{
	vspeed_ =vspeed_+gravity_;
}
else 
{
	if keyboard_check_pressed(vk_space)
    {
	sprite_index=S_player_jump_in_air;
	vspeed_=-30;
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
if vspeed_>3
{
	sprite_index=S_player_drop;
}
if vspeed_<-10
{
	sprite_index=S_player_jump_in_air;
}