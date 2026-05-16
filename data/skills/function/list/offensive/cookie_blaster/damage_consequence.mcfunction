# Uccisione singolo proiettile
kill @e[type=item,tag=cookie.projectile,limit=1,sort=nearest,distance=..3]

# Feedback particellare
particle cloud ~ ~ ~ 0 0 0 0.1 1 force
particle item{item:"minecraft:cookie"} ~ ~ ~ 0.1 0.1 0.1 0.15 15 force

# Feedback sonoro
playsound block.grass.break ambient @a ~ ~ ~ 2 2
playsound block.gravel.break player @a ~ ~ ~ 2 1.3