#########################################################################
## Chiamata dalle evocazioni che cambiano dimensione (es. doom_shroom) ##
## Uso: function skills:auxiliary/summon/resize {width, height}        ##
## Esecutore: l'evocazione (hitbox)                                    ##
#########################################################################

$data merge entity @s {width:$(width)f,height:$(height)f}
