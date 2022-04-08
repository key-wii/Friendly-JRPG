function savedata_set_true(data, setToThis) {
	ini_open("saveData.ini");
	ini_write_real("Options", data, setToThis);
	ini_close();
}