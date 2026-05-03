

if keyboard_check_pressed(ord("G")){
	global.player = (global.player == POV.Lucas) ? POV.Manu : POV.Lucas
}
show_debug_message(global.player)