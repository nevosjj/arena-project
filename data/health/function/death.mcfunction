# Feedback audio
playsound entity.blaze.death player @a ~ ~ ~ 2 2

# Feedback testo
tellraw @a [\
    {"atlas":"minecraft:gui","sprite":"mob_effect/bad_omen"},{"text":" "},\
    {"selector":"@s","color":"dark_red"},\
    {"text":" è morto!","color":"gray"}]

# Operazione
scoreboard players operation @s stat.current_health = @s stat.max_health
scoreboard players add @s death 1

# Modalità spettatore per il perdente
gamemode spectator @s

# Inserimento tag della morte per evitare di chiamare più di una volta questo flusso
# La prevenzione viene fatta in health:incoming_damage
tag @s add round.dead

# Ottenimento cuori giocatori in uno score
execute store result score @s player.hearts run attribute @s max_health base get

## Inserimento dati animazione morte
# ID
execute store result storage arenaproject:game_memory animationTemp.ID int 1.0 run scoreboard players get @s ID
# Nome profilo
loot replace entity @s enderchest.0 loot animation:player_name
data modify storage arenaproject:game_memory animationTemp.profileName set from entity @s EnderItems[0].components."minecraft:custom_name".hover_event.name
# Animazione equipaggiata
## PER ORA L'ANIMAZIONE NON è DINAMICA E CE N'è SOLO UNA ##
data modify storage arenaproject:game_memory animationTemp.death_animation set value "standard"

# Animazione morte
function animation:deaths/general/create_mannequin with storage arenaproject:game_memory animationTemp