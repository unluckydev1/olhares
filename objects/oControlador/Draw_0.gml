for(var i = 0; i < array_length(array_depth); i ++){
    var _index = array_depth[i];
    var _inst = _index[0];
    //show_message(_inst)
    with(_inst){
        event_perform(ev_draw_begin,0)
        event_perform(ev_draw,0)
    }
}