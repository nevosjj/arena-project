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

# Inserimento tag della morte per evitare di chiamare più di una volta questo flusso
tag @s add round.dead

# Ottenimento cuori giocatori in uno score
execute store result score @s player.hearts run attribute @s max_health base get

# Chiamata di funzione per capire se far continuare la partita
function match:death