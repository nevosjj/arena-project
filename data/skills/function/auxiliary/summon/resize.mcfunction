#####################################################################################
## Chiamata dalle abilità con evocazioni che cambiano dimensione (es. doom_shroom) ##
## Esecutore: il cervello                                                          ##
## Uso: function skills:auxiliary/summon/resize {width, height}                    ##
## Cambia le dimensioni della hitbox collegata.                                    ##
#####################################################################################

scoreboard players operation #summon summon.ID = @s summon.ID
$execute at @s as @e[type=interaction,tag=player_summon,distance=..16] if score @s summon.ID = #summon summon.ID run data merge entity @s {width:$(width)f,height:$(height)f}
scoreboard players reset #summon summon.ID
