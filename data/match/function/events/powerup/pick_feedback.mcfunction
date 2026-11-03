########################################################
## Chiamata da match:events/powerup/types/<tipo>/pick ##
## Esecutore: il giocatore | Macro: name, color       ##
## Annuncia a tutti chi ha raccolto il potenziamento. ##
########################################################

$tellraw @a [{"text":"ᴘᴏᴛᴇɴᴢɪᴀᴍᴇɴᴛᴏ","color":"light_purple","bold":true}, \
    {"text":" > ","color":"dark_gray","bold":false}, \
        {"selector":"@s","color":"white","bold":false}, \
        {"text":" ha raccolto ","color":"gray","bold":false}, \
        {"text":"$(name)","color":"$(color)","bold":false}, \
        {"text":"!","color":"gray","bold":false}]
