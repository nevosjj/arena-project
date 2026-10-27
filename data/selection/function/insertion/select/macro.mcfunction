#################################################
## Chiamato da                                 ##
## selection:insertion/select/confirm_skill    ##
## selection:insertion/select/random/pick_type ##
## Prende tutti i dati dell'abilità scelta     ##
#################################################

## Estrazione dati skill nella temporanea
$data modify storage arenaproject:game_memory temporary.skill set from storage ability_data:$(skill_type_str) skills[$(skill_id)]

## Salva i dati dall'estrazione dati skill dalla temporanea
$data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skill_type_str) set from storage arenaproject:game_memory temporary.skill

## Salva l'indice temporaneo dell'abilità
# Serve a cercare l'abilità giusta nell'array di ogni tipo abilità
$data modify storage arenaproject:game_memory players[{ID:$(ID)}].skills.$(skill_type_str).meta.dynamicIndex set from storage arenaproject:game_memory temporary.skill_id

# counter.selection++ e rimozione tag (nel caso sia la prima volta che venga selezionata l'abilità nella partita casuale)
$scoreboard players add @s[tag=must_select.$(skill_type_str)] counter.selection 1
$tag @s[tag=must_select.$(skill_type_str)] remove must_select.$(skill_type_str)

## COSTO ENERGIA (Esperienza)
# Esclusivo alle abilità offensive
execute if data storage arenaproject:game_memory temporary.skill.technical.cost \
store result score @s experience_cost run data get storage arenaproject:game_memory temporary.skill.technical.cost

## RICARICA (Secondi)
# Esclusivo alle abilità Support, Utility, Ultimate
$execute store result score @s cooldown.$(skill_type_str) run data get storage arenaproject:game_memory temporary.skill.technical.cooldown

## SALVATAGGIO STATISTICHE ABILITA DA DATAPATH A SCOREBOARD
# Range
$execute store result score @s condition_range.$(skill_type_str) run data get storage arenaproject:game_memory temporary.skill.technical.range

## CONTROLLO CONDIZIONI
# Ha la condizione? Poni lo score bool a 1
$execute if data storage arenaproject:game_memory temporary.skill.technical.condition run scoreboard players set @s condition.$(skill_type_str) 1
# Che condizione ha? RAYCAST || AREA (tag)
$execute if data storage arenaproject:game_memory temporary.skill.tecnical.condition.raycast run tag @s add $(skill_type_str).condition.raycast
$execute if data storage arenaproject:game_memory temporary.skill.tecnical.condition.area run tag @s add $(skill_type_str).condition.area
# Range condizione
$execute if data storage arenaproject:game_memory temporary.skill.technical.condition store result score @s condition_range.$(skill_type_str) run \
data get storage arenaproject:game_memory temporary.skill.technical.condition.range

# Controllo selezione completa delle abilità
function selection:insertion/select/check_full

# Cleanup
data remove storage arenaproject:game_memory temporary