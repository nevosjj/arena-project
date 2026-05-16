# Ricariche--
execute as @a[tag=in_game,tag=utility_down] run function skills:cooldowns/utility
execute as @a[tag=in_game,tag=support_down] run function skills:cooldowns/support
execute as @a[tag=in_game,tag=ultimate_down] run function skills:cooldowns/ultimate

# Actionbar in-game
execute as @a[tag=in_game] run title @s actionbar \
    [{"bold":false,"color":"red","italic":false,"shadow_color":-5636096,"text":"♥ "},\
    {"color":"green","score":{"name":"@s","objective":"stat.current_health"},"shadow_color":-11184811} \
    ," ",{"atlas":"minecraft:items","bold":false,"color":"yellow","italic":false,"sprite":"item/yellow_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.utility_timer"},"shadow_color":-11184811}," ",\
    {"atlas":"minecraft:items","bold":false,"color":"green","italic":false,"sprite":"item/green_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.support_timer"},"shadow_color":-11184811}," ",\
    {"color":"gold","atlas":"minecraft:items","sprite":"item/orange_dye"}," ",\
    {"color":"gray","score":{"name":"@s","objective":"cooldown.ultimate_timer"},"shadow_color":-11184811}]