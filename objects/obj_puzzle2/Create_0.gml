/// @description Insert description here
// You can write your code in this editor
solved = false;
str = "10273249758";
ans = "01223457789";
for(i = 0; i < 11; i++){
	array[i] = string_char_at(str, i+1);
	ans_array[i] = string_char_at(ans, i+1);
}
position = 0;

instance_deactivate_layer("Prize");
