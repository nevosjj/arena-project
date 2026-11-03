##########################################################
## Chiamata da match:events/powerup/types/berserk/start ##
## Posizione: il giocatore | Macro: ID del giocatore    ##
##########################################################

# Un solo marker per giocatore
$kill @e[type=marker,tag=powerup.berserk_visual,nbt={data:{ID:$(ID)}}]

$summon marker ~ ~ ~ {Tags:["powerup.berserk_visual"],data:{ID:$(ID)}}
