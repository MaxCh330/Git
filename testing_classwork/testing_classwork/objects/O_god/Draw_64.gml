/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 59271876
/// @DnDArgument : "x1" "20"
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "100"
/// @DnDArgument : "barcol" "$FF0000F7"
/// @DnDArgument : "maxcol" "$FF02FF4A"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(20, 20, 100, 100, __dnd_health, $FFFFFFFF, $FFFFFF & $FFFFFF, $FF02FF4A & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF0000F7>>24) != 0));