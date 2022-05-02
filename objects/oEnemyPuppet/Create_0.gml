/// @description Check if not recruited before starting movement path
var _recruitedAlready = savedata_get("Allies", "recruitedPuppet", false);
if (_recruitedAlready) instance_destroy();

path_start(pathEnemyRad, 3, path_action_continue, false);

prev_x = x;
prev_y = y;
