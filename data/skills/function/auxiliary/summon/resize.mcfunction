#####################################################################################
## Chiamata dalle abilità con evocazioni che cambiano dimensione (es. doom_shroom) ##
## Esecutore: il cervello                                                          ##
## Uso: function skills:auxiliary/summon/resize {width, height}                    ##
## Cambia le dimensioni della hitbox collegata.                                    ##
#####################################################################################

scoreboard players operation #summon summon.id = @s summon.id
$execute as @e[type=interaction,tag=player_summon] if score @s summon.id = #summon summon.id run data merge entity @s {width:$(width)f,height:$(height)f}
scoreboard players reset #summon summon.id
