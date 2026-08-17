# Feedback
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"AB PROJECT","color":"red","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Inizio del caricamento.\n","color":"gray"}]

function root:loads/gamerules
function root:loads/scores

# Feedback finale
tellraw @a [{"text":"\n[","color":"dark_gray"},{"text":"AB PROJECT","color":"green","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Caricamento concluso.","color":"gray"}]