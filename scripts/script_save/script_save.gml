if( file_exists("level.sav") ){
	file_delete("level.sav");
}

var saveFile = file_text_open_write("level.sav");
var currLevel = global.currentLevel;

var instanceMap = ds_map_create(); // create a ds map
ds_map_add(instanceMap, "currLevel", currLevel);
// convert map to JSON
var instanceJSON = json_encode(instanceMap);
ds_map_destroy(instanceMap);

// write JSON to file
file_text_write_string(saveFile, instanceJSON);
file_text_close(saveFile);