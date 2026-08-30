
# Pulizia oggetti della chest
data remove entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] Items

# Feedback
playsound block.wooden_trapdoor.close ui @s ~ ~ ~ 10 0

# Rimuovi il tag di accoppiamento al giocatore
execute as @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] at @s run function selection:insertion/minecart/remove_tag with entity @s data

# Uccisione
kill @e[type=block_display,limit=1,sort=nearest,distance=..3]
kill @e[type=chest_minecart,limit=1,sort=nearest,distance=..3]