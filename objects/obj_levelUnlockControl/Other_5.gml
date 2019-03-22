/// @description Insert description here
// You can write your code in this editor
//if(room != room_splash_screen && room != main_menu_screen && room!= settings_screen  && room != level_select_screen && room != room_quit && room!= room_gameover){
//	if( currentLevel < maxLevel ){
//		currentlevel++;
//	}
//}
if(file_exists(fileName)){
	file_delete(fileName);
}

var SaveFile = file_text_open_write(fileName);
file_text_write_real(SaveFile, string(global.currentLevel));
file_text_close(SaveFile);