############
# INFO
# CHIAMATA DA skills/activations/research
############

# Feedback
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 2 1.8

# Spawn riferimento
execute anchored eyes run summon marker ^ ^ ^3 {Tags:["cookie.objective"]}

# Evocazione (nuovo)
#execute as @e[type=marker,distance=..3,tag=cookie_blaster.marker,limit=1,sort=nearest] run function skills:list/offensive/cookie_blaster/spawning with entity @s data

# Evocazione (legacy)
execute anchored eyes run function skills:list/offensive/cookie_blaster/spawn

# Settaggio statistiche
execute as @e[type=item,distance=..4,tag=cookie.projectile,tag=new.projectile] at @s run function skills:list/offensive/cookie_blaster/setup

# Uccisione marker obiettivo
kill @e[type=marker,tag=cookie.objective,limit=1,sort=nearest,distance=..12]

# Uccisione marker abilità
kill @e[type=marker,distance=..2,sort=nearest,limit=1,tag=cookie_blaster.marker]