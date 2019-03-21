/// @description Insert description here
// You can write your code in this editor
if(file_exists(fileName)){
	file_delete(fileName);
}

var SaveFile = file_text_open_write(fileName);
file_text_write_real(SaveFile, string(obj_levelUnlockControl.currentLevel));
file_text_close(SaveFile);