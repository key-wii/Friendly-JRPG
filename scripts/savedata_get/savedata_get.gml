function savedata_get(section, variable, def) {	ini_open("saveData.ini");
	var data = ini_read_real(section, variable, def);
	ini_close();
	return data;
}