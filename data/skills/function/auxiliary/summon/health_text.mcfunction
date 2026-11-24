########################################################
## Chiamata da skills:auxiliary/summon/health_display ##
## Esecutore: l'evocazione (hitbox) | Macro: hp       ##
########################################################

$execute on passengers if entity @s[type=text_display,tag=summon.health_display] run data modify entity @s text set value {"text":"$(hp) ♥","color":"#A8FF9E"}
