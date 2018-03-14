x = O_player.x;
y = O_player.y;
Shooter.image_xscale=O_player.image_xscale;
if mouse_check_button_pressed(mb_left)
{
	sprite_index=S_player_shoot;
	
    instance_create_layer(x,y,"instances",O_bullet);
}else
{
	sprite_index=S_player_shooter;
}