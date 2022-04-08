function savedata_set(section, variable, data) {
	ini_open("saveData.ini");
	ini_write_real(section, variable, data);
	ini_close();
}