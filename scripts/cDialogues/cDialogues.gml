// --- Info de dialogos

enum NomesConhecidos{
    Lucas,
    Manu,
    size
}
G.nomes = array_create(NomesConhecidos.size)
// --- Funções de Atalho para Facilitar a Escrita ---
function Texto(_speaker, _text, _next = -1, _newstart = undefined){
    return {
        speaker: _speaker,
        text: _text,
        next: _next - 1, 
        newstart: _newstart
    };
}
function NewStart(_index ){
    var D = oDialogo
    D.father.TextP = _index
    return(_index)
}
function Escolhas(_speaker, _text, _array_choices) {
    return {
        speaker: _speaker,
        text: _text,
        choices: _array_choices,
        next: -1
    };
}

function Opcao(_text, _next_func) {
    return {
        text: _text,
        flagged: false,
        next: _next_func
    };
}

// --- Funções de Lógica do Sistema ---
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
    _arr = array_delete(_arr, _select, 1)
}

function GetLen(){
    var D = oDialogo
    var _page = D.page
    var _arr = D.text[_page].choices
    return array_length(_arr)
}

// --- Montagem do Diálogo ---
Dialogo_Teste = [
    // Índice 0
    Escolhas("Manu", "... ", [
        Opcao("Oi ablubluble", function() { RemoveChoice(); return 2; }),
        Opcao("Coal seu nome", function() { RemoveChoice(); return 5; }),
        Opcao("blublublublu", function() { RemoveChoice(); return 9; }),
        Opcao("xau", function() { if (GetLen() == 1) RemoveChoice(); return 11; })
    ]),
    

    Texto("Manu", "Oi ablubluble", 2),
    Texto("Lucas", "Oi, concordo em partes", 3),
    Texto("Manu", "Tabom", 0),
    Texto("Manu", "Coal Seu nome", 5),
    

    Escolhas("Lucas", "Acho que é Lucas", [
        Opcao("Que merda", function() { return 7; }),
        Opcao("Que foda", function() { return 8; })
    ]),
    

    Texto("Lucas", "se mata", 0),
    Texto("Lucas", "hihi", 0),
    Texto("Manu", "blublublu", 9),
    Texto("Lucas", "blublublublu", 0),
    Texto("Manu", "xau", 11),
    Texto("Lucas", "xau", -1)
];
#region sala de vidro
var _nome = "???"
Dialogo_SalaVidro = [
    
    Escolhas(" ","Ele parece observar o jogo...",[
        Opcao("(Cutucar)", function(){ RemoveChoice(); return 2;}),
        Opcao("Sair", function(){ return -1;})  
    ]),
    #region cutucar
    Texto("Manu","(você cutuca ele)",3),
    
    Texto(_nome,"Oi? Vai testar o jogo?",4),
    
    Escolhas("Manu"," ",[
        Opcao("É do seu grupo?", function(){return 5}),
        Opcao("Queru testar", function(){RemoveChoice();return 9; }),
    ]),
    
    Texto("Manu","Esse jogo (você aponta) é do seu grupo?",6),
    
    Texto(_nome,"Sim, eu que programei o jogo!",7),
      
    Texto(" ","(você nota um entusiasmo enquanto ele fala)",8),
    
    Texto("???", "Eu e minha equipe fizemos esse jogo, sendo eu o programador e artista, e o resto dos caba ajudaram no roteiro, musica, essas coisas sabe?",11),
    
    Texto("Manu", "Queru testar sim",10),
    
    Texto("Lucas","Tem umas pessoas na fila ainda, espera um pouco ai",4),
    
    Escolhas("Manu","...",[
		Opcao("Tem roblox no pc do tio?", function(){return 12;}),
		Opcao("Faz undertale 2 ai", function(){})
	])
    #endregion 
    #region 
    
]


#endregion 
G.dialogues = [Dialogo_Teste,Dialogo_SalaVidro];