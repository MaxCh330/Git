if keyboard_check(ord("W"))
{
	vspeed_=-10;
}else if keyboard_check(ord("S"))
{
	vspeed_=10;
}
else
{
	vspeed_=0;
}
if place_meeting(x,y+vspeed_,Wall)
{
	while !place_meeting(x,y+sign(vspeed_),Wall){y+=sign(vspeed_)}
	vspeed_=0
}
y+=vspeed_;
if keyboard_check(ord("D"))
{
	hspeed_=10;
}else if keyboard_check(ord("A"))
{
	hspeed_=-10;
}
else
{
	hspeed_=0;
}
if place_meeting(x+hspeed_,y,Wall)
{
	while !place_meeting(x+sign(hspeed_),y,Wall){x+=sign(hspeed_)}
	hspeed_=0
}
x+=hspeed_;

if shoot_able==1
{
	if keyboard_check(vk_space)
	{
		shoot_able=0;
		alarm[0]=10;
	    instance_create_layer(x,y,"instances",O_bullet);
		
     }
}