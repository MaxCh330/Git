if keyboard_check(ord("W"))
{
	vspeed_=-5;
}else if keyboard_check(ord("S"))
{
	vspeed_=5;
}
else
{
	vspeed_=0;
}
y+=vspeed_;
if keyboard_check(ord("D"))
{
	hspeed_=5;
}else if keyboard_check(ord("A"))
{
	hspeed_=-5;
}
else
{
	hspeed_=0;
}
x+=hspeed_;
depth=-y;