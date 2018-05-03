//CD
rush_act++;
//movement
if keyboard_check(ord("A"))
{
	image_xscale=-1;
    sprite_index=S_player_walk;
	rush=-100;
	hspeed_=-running_hspeed_;
}else if keyboard_check(ord("D"))
{
	image_xscale=1;
	sprite_index=S_player_walk;
	rush=100;
	hspeed_=running_hspeed_;
}else
{
	sprite_index=S_player_idle_side;
	hspeed_=0;
}
if keyboard_check(vk_space)//Running
{
	
	running_hspeed_=20;
	
}else
{
	
	running_hspeed_=5;
}
if hspeed_=20||hspeed_=-20
{
	sprite_index=S_player_run;
	instance_create_layer(O_player.x,O_player.y,"Instances",O_playerShadow);
}
//rush
if(rush_act>100) 
{   
	if keyboard_check(ord("F"))
    {
	    rush_act=0;
	    sprite_index=S_player_rush;
	    hspeed_=rush;
	    instance_create_layer(O_player.x,O_player.y,"Instances",O_playerShadow);
		instance_create_layer(O_player.x,O_player.y+5,"Instances",O_rushEffect);
    }
}

if !place_meeting(x, y+5, O_wall)
{
	vspeed_ =vspeed_+gravity_;
}
else 
{
	if keyboard_check_pressed(ord("W"))
    {
	sprite_index=S_player_jump_in_air;
	vspeed_=-30;
    } 
}

//blockX
if place_meeting(x+hspeed_,y,O_wall)
{
	while !place_meeting(x+sign(hspeed_),y,O_wall)
	{
		x+=sign(hspeed_);
	}
	hspeed_=0;
}
x=x+hspeed_;

//blockY
if place_meeting(x,y+vspeed_,O_wall)
{
	while !place_meeting(x,y+sign(vspeed_),O_wall)
	{
		y+=sign(vspeed_);
	}
	vspeed_=0;
}

y=y+vspeed_;
//droping
if vspeed_>3
{
	sprite_index=S_player_drop;
}
if vspeed_<-10
{
	sprite_index=S_player_jump_in_air;
}