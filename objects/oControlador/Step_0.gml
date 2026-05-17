

/*if keyboard_check_pressed(ord("G")){
	global.player = (global.player == POV.Lucas) ? POV.Manu : POV.Lucas
}*/
show_debug_message(global.player)
array_depth = []
with(oEntities){
    array_push(other.array_depth,[id,y])
}
array_sort(array_depth,function(_a, _b){
    return _a[1] - _b[1];
})