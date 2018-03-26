depth=-y;
if health_enemy==0
{
	sprite_index=S_enemyDead;
	y_speed=0;
	if sprite_index=S_enemyDead
	{
		if image_index=1
		{
			instance_destroy();
		}
	}
	
}
y+=y_speed;