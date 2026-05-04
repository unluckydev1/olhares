#macro guiw display_get_gui_width()
#macro guih display_get_gui_height()

#macro POVplayers [oLucas,oManu]
#macro G global

enum POV{
	Lucas,
	Manu
}


G.player = POV.Lucas
G.reading = false