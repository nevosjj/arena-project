# Ottenimento gittata ed impostazione moltiplicazione
execute store result score @s temp run data get entity @s data.distance

# Operazione (ablityRange * 20, se è a 6 allora sarà 120;
# +5 per aggiungere quel piccolo di range per non mandare in brodo di giuggiole i giocatori quando vedono che la spirale li ha colpiti oltre il range)
# In questo modo, ogni distance equivale a 1 blocco nella f(x) ricorsiva.
scoreboard players set @s temp2 25
scoreboard players operation @s temp *= @s temp2

# Uccisione riferimento
kill @e[type=marker,tag=freeze.objective,limit=1,sort=nearest,distance=..4]

# Impostazione teamID
execute store result score @s teamID run data get entity @s data.teamID

# Impostazione tag
tag @s add freeze_breath.finder
tag @s add test.down

# Distanza particella
data modify entity @s data.particleDistance set value 0.0

# Inizio ricorsione
function skills:list/offensive/freeze_breath/recursive with entity @s data