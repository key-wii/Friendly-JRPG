/// @description Check if not recruited before starting movement path
var _recruitedAlready = savedata_get("Allies", "recruitedFrog", false);
if (_recruitedAlready) instance_destroy();

/*y_adjust = 0;
y_up = false;
rot_r = false;*/
