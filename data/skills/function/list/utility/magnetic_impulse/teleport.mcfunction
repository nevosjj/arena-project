# Tag di sicurezza
$tag @a[tag=!magnetic_player,distance=..$(range)] add magnetic_tag$(ID)

# Teletrasporto
$execute at @s run tp @a[tag=magnetic_tag$(ID)] @s

# Stordimento
$scoreboard players add @a[tag=magnetic_tag$(ID)] magnetic_impulse.counter $(duration)
$tag @a[tag=magnetic_tag$(ID)] add magnetic_impulse.immobilized
$execute as @a[tag=magnetic_tag$(ID)] run attribute @s movement_speed modifier add magnetic_impulse:immobilize -100 add_multiplied_total
$execute as @a[tag=magnetic_tag$(ID)] run attribute @s jump_strength modifier add magnetic_impulse:immobilize -100 add_multiplied_total

# Rimozione tag di sicurezza
$tag @a remove magnetic_tag$(ID)

# Uccisione
kill @s