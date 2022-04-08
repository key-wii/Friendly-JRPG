/// @description Check if not recruited before starting movement path
ini_open("saveData.ini");
var recruitedAlready = ini_read_real("Options", "recruitedRadish", false);
ini_close();
if (recruitedAlready) instance_destroy();

path_start(pathEnemyRad, 3, path_action_continue, false);