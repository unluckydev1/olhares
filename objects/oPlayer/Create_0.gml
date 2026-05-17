event_inherited()
/* logica:
NPC ou player -> se player -> acesso aos comandos, se não -> comportamento de NPC personalizado
*/
textP = 0
text = false
if !(Dialogo == -1){
    text = G.dialogues[Dialogo]
}

player = POV.Lucas
spd = 1.25
hspd = 0
vspd = 0
sprites = [[]]
change_sprite = function(){
    if hspd = 0 and vspd = 0{
        action = 0
        image_xscale = scale
        switch face{
            case 0: sprite_index = sprites[action,face]
                break;
            case 1: sprite_index = sprites[action,face]
                image_xscale = -scale
                break;
            case 2: sprite_index = sprites[action,face]
                break;
            case 3: sprite_index = sprites[action,face]
                break;
        }
        
    }else{
        action = 1
        image_xscale = scale
        switch face{
            case 0: sprite_index = sprites[action,face]
                break;
            case 1: sprite_index = sprites[action,face]
                image_xscale = -scale
                break;
            case 2: sprite_index = sprites[action,face]
                break;
            case 3: sprite_index = sprites[action,face]
                break;
        }
    }
    image_yscale = abs(scale)
}
face = -1
scale = 1

colisao = function(){
	move_and_collide(hspd,vspd,oColisao)
}

idle = function(){
	var _up = keyboard_check(vk_up)
	var _down = keyboard_check(vk_down)
	var _left = keyboard_check(vk_left)
	var _right = keyboard_check(vk_right)
	
	hspd = (_right - _left)*spd
	vspd = (_down - _up)*spd
    
    
	if (face!=-1){
        script_execute(change_sprite)
        if _up face = 2
        if _down face = 0
        if _left face = 1
        if _right face = 3  
    }
	colisao()
}
npc = function(){
	hspd = 0
    vspd = 0
    if (face!=-1){
        script_execute(change_sprite)
    }
	//vspd = sin(get_timer()/100000)/2
	colisao()
    if (is_array(text)){
        var pl = POVplayers[G.player]
        if (distance_to_point(pl.x,pl.y) <= 64){
            if keyboard_check_pressed(ord("E")){
                var inst = instance_create_layer(x,y,layer,oDialogo)
                inst.text = text
                inst.father = self.id
                inst.page = textP
            }
        }
    }
    
}

estadoP = idle
estadoN = npc

estado = estadoP