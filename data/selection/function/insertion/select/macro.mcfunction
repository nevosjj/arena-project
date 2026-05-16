# Prendi skill corretta nella temporanea e salvala nella temporanea
$data modify storage arenaproject:game_memory temporary.skill set from storage arenaproject:ability_data skills.$(skill_type_str)[$(skill_id)]

# Salva nel player specifico dalla temporanea
$data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills[$(skill_type_num)] set from storage arenaproject:game_memory temporary.skill

# counter.selection++ e rimozione tag (nel caso sia la prima volta che venga selezionata l'abilità nella partita casuale)
$scoreboard players add @s[tag=must_select.$(skill_type_str)] counter.selection 1
$tag @s[tag=must_select.$(skill_type_str)] remove must_select.$(skill_type_str)

# SENSIBILE ALLE OFFENSIVE - Costo energia (esperienza)
execute if score @s selection.skill.type matches 0 store result score @s experience_cost run data get storage arenaproject:game_memory temporary.skill.abilityCost

# SENSIBILE ALLE UTILITY, SUPPORT E ULTIMATE - Ricarica (secondi)
$execute unless score @s selection.skill.type matches 0 store result score @s cooldown.$(skill_type_str) run data get storage arenaproject:game_memory temporary.skill.abilityCooldown

# Feedback debug
tellraw @a[tag=debug] [\
  {"text":"\n>>> ","color":"red","bold":true},\
  {"text":"Giocatore ","color":"gold","bold":false},\
  {"score":{"name":"@s","objective":"ID"},"color":"yellow","bold":true},\
  {"text":" ha scelto ","color":"gray","bold":false},\
  {"storage":"arenaproject:game_memory","nbt":"temporary.skill.abilityDisplay","color":"dark_purple","bold":false,"underlined":true}\
]

# Controllo selezione completa delle abilità
function selection:insertion/select/check_full

# Cleanup
data remove storage arenaproject:game_memory temporary