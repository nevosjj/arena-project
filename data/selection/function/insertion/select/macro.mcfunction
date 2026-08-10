# Prendi skill corretta nella temporanea e salvala nella temporanea
$data modify storage arenaproject:game_memory temporary.skill set from storage ability_data:$(skill_type_str) skills[$(skill_id)]

# Salva nel player specifico dalla temporanea
$data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skill_type_str) set from storage arenaproject:game_memory temporary.skill

# counter.selection++ e rimozione tag (nel caso sia la prima volta che venga selezionata l'abilità nella partita casuale)
$scoreboard players add @s[tag=must_select.$(skill_type_str)] counter.selection 1
$tag @s[tag=must_select.$(skill_type_str)] remove must_select.$(skill_type_str)

# SENSIBILE ALLE OFFENSIVE - Costo energia (esperienza)
execute store result score @s experience_cost run data get storage arenaproject:game_memory temporary.technical.cost

# SENSIBILE ALLE UTILITY, SUPPORT E ULTIMATE - Ricarica (secondi)
$execute store result score @s cooldown.$(skill_type_str) run data get storage arenaproject:game_memory temporary.technical.cooldown

# Controllo selezione completa delle abilità
function selection:insertion/select/check_full

# Cleanup
data remove storage arenaproject:game_memory temporary

say b