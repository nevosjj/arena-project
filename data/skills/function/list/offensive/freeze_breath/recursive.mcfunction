# INFO
# IMPOSTAZIONI:
    # 1. Meno lag ma meno visualmente consistente.
    # 0.35 float scale; teleport di 0.12; rotazione 15/-15; morte temp 60.
    # 2. Altrimenti, dividi a metà i valori sopra per una visuale più sharp ma più laggosa (impostazione attuale)

# Aumento score
# Questo decide
    # 1. quando muore il marker
    # 2. a quale distanza deve stare ogni singola la particella per l'evocazione.
    # 3. "range" serve a determinare il range dove trova il nemico.
scoreboard players add @s temp3 1
execute store result entity @s data.particleDistance float 0.0175 run scoreboard players get @s temp3
execute store result entity @s data.range float 0.025 run scoreboard players get @s temp3

# Particella
    # Evocazione particella con la distanza decisa.
$execute unless entity @s[tag=breath.blocked] run particle snowflake ^ ^ ^$(particleDistance) 0 0 0 0 1 force
$particle minecraft:dust_color_transition{from_color:[0.15,0.1,0.45],to_color:[0.85,0.7,1.0],scale:1.1} ^ ^ ^$(particleDistance) 0 0 0 0 1 force

# Blocco (Nel caso passasse attraverso un blocco, arrecherà meno danni.)
execute unless entity @s[tag=breath.blocked] unless block ~ ~ ~ air run function skills:list/offensive/freeze_breath/block_reduction

# Identificazione nemico
$execute as @a[distance=..$(range)] unless entity @s[tag=freeze_breath_$(ID).victim] run \
    function skills:auxiliary/search_damage \
        with entity @e[type=marker,distance=..$(range),limit=1,sort=nearest,tag=freeze_breath.marker] data

# Teletrasporto
    # Questo decide quanta distanza deve percorrere ogni ricorsione e quanto deve ruotare ogni metà della spirale.
tp @s[tag=test.down] ^0.06 ^ ^ ~ ~7.5
tp @s[tag=test.up] ^-0.06 ^ ^ ~ ~-7.5

# Check tags (cambio rotazione, da migliorare e mettere le funzioni di "cambiamento rotazione".
execute if entity @s[x_rotation=90] run function skills:list/offensive/freeze_breath/rotation_up
execute if entity @s[x_rotation=-90] run function skills:list/offensive/freeze_breath/rotation_down

# Uccisione (caso base)
execute if score @s temp3 >= @s temp run return run function skills:list/offensive/freeze_breath/end with entity @s data

# Ricorsione
execute if score @s temp3 < @s temp at @s run return run function skills:list/offensive/freeze_breath/recursive with entity @s data