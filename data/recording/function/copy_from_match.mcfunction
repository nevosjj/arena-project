# 1. Imposta la testa a forma di TV
data merge block 11 -59 -7 {Items:[{Slot:13b,id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmI5Mzg3ZWY1MDc3NDI2M2NmMjFlNjBjYTcxZmZmMmE0ODQ1NWM4MjFhODE2YzlkYzNiMjBkNmMyYjBjZDEwMCJ9fX0="}]}}}]}

# 2. Inietta il nome dello storage dentro "item_name" (apparirà dritto e non in corsivo!)
data modify block 11 -59 -7 Items[{Slot:13b}].components."minecraft:item_name" set string storage match_recorder:data actual_match.match_id
