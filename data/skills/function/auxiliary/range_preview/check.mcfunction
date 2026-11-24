#######################################################################
## Chiamata da root:ticks/main                                       ##
## Esecutore e posizione: il giocatore                               ##
## Se tiene in mano un'abilità con condizione raycast (pronta),      ##
## mostra solo a lui la fine della gittata (condition_range.<tipo>). ##
#######################################################################

execute if entity @s[tag=offensive.condition.raycast] if items entity @s weapon.mainhand *[custom_data~{skill:{offensive:1b}}] run return run function skills:auxiliary/range_preview/show {type:"offensive"}
execute if entity @s[tag=support.condition.raycast] if items entity @s weapon.mainhand *[custom_data~{skill:{support:1b}}] run return run function skills:auxiliary/range_preview/show {type:"support"}
execute if entity @s[tag=utility.condition.raycast] if items entity @s weapon.mainhand *[custom_data~{skill:{utility:1b}}] run return run function skills:auxiliary/range_preview/show {type:"utility"}
execute if entity @s[tag=ultimate.condition.raycast] if items entity @s weapon.mainhand *[custom_data~{skill:{ultimate:1b}}] run return run function skills:auxiliary/range_preview/show {type:"ultimate"}
