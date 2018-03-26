x=O_player.x;
y=O_player.y+5;
if O_player.image_xscale=1
{
	image_xscale=1;
}else
{
	image_xscale=-1
}
if keyboard_check(ord("F"))
{
	sprite_index=S_player_rushEffect;
}
else
{
	sprite_index=S_nothing;
}