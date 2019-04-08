/// @description Insert description here
// You can write your code in this editor
//fileName = "Save.sav";
persistent = true;
global.currentLevel = 1;
global.maxLevel = 6;
popups = 0;
if( file_exists("level.sav") ){
	var loadFile = file_text_open_read("level.sav");
	var stringJSON = file_text_read_string(loadFile);
	var instanceMap = json_decode( stringJSON );
	var currLevel = ds_map_find_value(instanceMap, "currLevel");
	global.currentLevel = currLevel;
	file_text_close(loadFile);
	ds_map_destroy(instanceMap);
}
//global.Save = false;
//if(global.Save){
//	game_load("Save.dat");
//}
//if( script_save_check() ){ // file exists
//	//global.currentLevel
//}
//// load old data if it exists
//if(file_exists(fileName)){
//	var LoadFile = file_text_open_read(fileName);
//	currentLevel = file_text_read_real(LoadFile);
//	file_text_close(LoadFile);
//}
////oldLevel = currentLevel;