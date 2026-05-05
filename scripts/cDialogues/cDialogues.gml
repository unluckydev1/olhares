function Flag(){
    var D = oDialogo
    var _page = D.page
    var _arr = D.text[_page].choices
    var _select = D.selected
    _arr[_select].flagged = true
}
function RemoveChoice(){
    var D = oDialogo
    var _page = D.page
    var _arr = D.text[_page].choices
    var _select = D.selected
    if (array_length(_arr) == 1){
        variable_struct_remove(D.text[_page], "choices")
        return 0
    }
    _arr = array_delete(_arr,_select,1)
    
}
function GetLen(){
    var D = oDialogo
    var _page = D.page
    var _arr = D.text[_page].choices
    var _select = D.selected
    return array_length(_arr)
}
Dialogo_SalaVidro = [
    {
        text: "... ",
        choices:[ 
            {
                text:"Oi ablubluble",
                flagged: false,
                next: function(){
                    RemoveChoice()
                    return 2
                } 
            },
            {
                text:"Coal seu nome",
                flagged: false,
                next: function(){
                    RemoveChoice()
                    return 5
                    
                } 
            },
            {
                text:"blublublublu",
                flagged:false,
                next: function(){
                    RemoveChoice()
                    return 9
                }
            },
            {
                text:"xau",
                flagged:false,
                next: function(){
                    
                    if (GetLen() == 1 ) RemoveChoice()
                    return 11
                }
            }
        ],
        speaker: "Manu",
        next: -1
    },
    {
        text:"Oi ablubluble",
        speaker: "Manu",
        next: 2
    },
    {
        text: "Oi, concordo em partes",
        speaker:"Lucas",
        next: 3
    },
    {
        text: "Tabom",
        speaker:"Manu",
        next: 0
    },
    {
        text:"Coal Seu nome",
        speaker:"Manu",
        next:5
    },
    {
        text:"Acho que é Lucas",
        choices:[ 
            {
                text:"Que merda",
                flagged: false,
                next: function(){
                    return 7    
                } 
            },
            {
                text:"Que foda",
                flagged: false,
                next: function(){
                    return 8
                } 
            }
        ],
        speaker:"Lucas"
        
    },
    {
        text:"se mata",
        speaker:"Lucas",
        next: 0
    },
    {
        text:"hihi",
        speaker:"Lucas",
        next:0
    },
    {
        text:"blublublu",
        speaker:"Manu",
        next:9
    },
    {
        text:"blublublublu",
        speaker:"Lucas",
        next:0
    },
    {
        text:"xau",
        speaker:"Manu",
        next:11
    },
    {
        text:"xau",
        speaker:"Lucas",
        next:-1
    }
]

G.dialogues = [Dialogo_SalaVidro] 