/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 4FEC481B
/// @DnDArgument : "direction" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(0, 0, 0, 0, __dnd_health, $FFFFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 1, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));