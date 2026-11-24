##########################################################
## Chiamata da recording:dialog/pages/player            ##
## Macro: recording:view stats (le 17 statistiche)      ##
## Una sezione per categoria: item e accanto i valori   ##
##########################################################

# Danni
$data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:blaze_powder",count:1},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"Danni",color:"red",bold:true},{text:"\nCorpo a corpo inflitti: ",color:"gray"},{text:"$(melee_inflicted)",color:"white"},{text:"\nCombo migliore: ",color:"gray"},{text:"$(best_combo)",color:"white"},{text:"\nAbilità inflitti: ",color:"gray"},{text:"$(ability_inflicted)",color:"white"},{text:"\nAlle evocazioni: ",color:"gray"},{text:"$(summon_damage_inflicted)",color:"white"}]}}

# Difesa
$data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:iron_chestplate",count:1},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"Difesa",color:"aqua",bold:true},{text:"\nCorpo a corpo ricevuti: ",color:"gray"},{text:"$(melee_damage_received)",color:"white"},{text:"\nAbilità ricevuti: ",color:"gray"},{text:"$(ability_damage_received)",color:"white"},{text:"\nTotali ricevuti: ",color:"gray"},{text:"$(total_damage_received)",color:"white"},{text:"\nDanni ridotti: ",color:"gray"},{text:"$(damage_halved)",color:"white"}]}}

# Guarigione
$data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:golden_apple",count:1},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"Guarigione",color:"green",bold:true},{text:"\nVita istantanea guarita: ",color:"gray"},{text:"$(instant_heal_received)",color:"white"},{text:"\nVita rigenerativa guarita: ",color:"gray"},{text:"$(regen_healed)",color:"white"},{text:"\nVita rigenerativa perduta: ",color:"gray"},{text:"$(regen_lost)",color:"white"},{text:"\nVita guarita totale: ",color:"gray"},{text:"$(total_heal_received)",color:"white"}]}}

# Esperienza
$data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:experience_bottle",count:1},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"Esperienza",color:"light_purple",bold:true},{text:"\nXP generata totale: ",color:"gray"},{text:"$(total_xp_generated)",color:"white"},{text:"\nXP generata con i secondi: ",color:"gray"},{text:"$(timer_xp_generated)",color:"white"},{text:"\nXP generata con i colpi melee: ",color:"gray"},{text:"$(melee_xp_generated)",color:"white"},{text:"\nXP sprecata (oltre 100 XP): ",color:"gray"},{text:"$(xp_wasted)",color:"white"}]}}

# Obiettivi
$data modify storage recording:view dialog.body append value {type:"minecraft:item",item:{id:"minecraft:dragon_egg",count:1},show_decorations:false,show_tooltip:false,width:16,height:16,description:{width:250,contents:[{text:""},{text:"Obiettivi",color:"gold",bold:true},{text:"\nPower-up raccolti: ",color:"gray"},{text:"$(powerup_picked)",color:"white"}]}}
