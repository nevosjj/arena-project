
# Pulizia oggetti della chest
data remove entity @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] Items

# Feedback
playsound entity.wandering_trader.disappeared ui @s ~ ~ ~ 10 0.8

# Rimuovi il tag di accoppiamento al giocatore
execute as @e[type=chest_minecart,limit=1,sort=nearest,distance=..3] at @s run function selection:insertion/minecart/remove_tag with entity @s data

# Uccisione
kill @e[type=chest_minecart,limit=1,sort=nearest,distance=..3]