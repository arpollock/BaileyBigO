/// @description Insert description here
// You can write your code in this editor
fileName = "Save.sav";
persistent = true;
currentLevel = 1;
maxLevel = 6;
// load old data if it exists
if(file_exists(fileName)){
	var LoadFile = file_text_open_read(fileName);
	currentLevel = file_text_read_real(LoadFile);
	file_text_close(LoadFile);
}