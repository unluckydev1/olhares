text = [
{
    text: "oi, sou oi",
    choices:[ 
        {
            text:"blablabla",
            flagged: false,
            next: function(){
                return (!flagged)? 2 : 4    
            } 
        },
        {
            text:"nao oi",
            flagged: false,
            next: function(){
                return (!flagged)? 3 : 4    
            } 
        }
    ],
    speaker: "Oi"
},
{
    text:"oi, sou oi, pq ainda le isso?",
    speaker: "Oi",
    next: 0
},
{
    text: "sou oi, pq ainda insiste?",
    speaker:"Oi",
    next: 0
},
{
    text: "vai ficar se repetindo? Oi",
    speaker:"Oi",
    next: -1
}
]
