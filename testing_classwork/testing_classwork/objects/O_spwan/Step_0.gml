if spwan==1

{
	 xSpwan=random_range(0,1100);
     ySpwan=random_range(0,144);
	 spwan=0;
     instance_create_layer(xSpwan,ySpwan,"instances",O_enemy);
     alarm[1]=50;
}