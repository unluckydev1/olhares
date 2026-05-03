event_inherited()
/* logica:
NPC ou player -> se player -> acesso aos comandos, se não -> comportamento de NPC personalizado
*/


player = POV.Lucas
spd = 5
hspd = 0
vspd = 0

colisao = function(){
	move_and_collide(hspd,vspd,oColisao)
}

idle = function(){
	var up = keyboard_check(vk_up)
	var down = keyboard_check(vk_down)
	var left = keyboard_check(vk_left)
	var right = keyboard_check(vk_right)
	
	hspd = (right - left)*spd
	vspd = (down - up)*spd
	
	colisao()
}
npc = function(){
	hspd = 0
	vspd = sin(get_timer()/100000)/2
	colisao()
}

estadoP = idle
estadoN = npc

estado = estadoP