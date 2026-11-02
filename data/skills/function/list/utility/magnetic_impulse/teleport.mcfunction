# Selezione nemici nel raggio (alleati e caster esclusi tramite teamID)
function skills:auxiliary/targeting/select_enemies with entity @s data

# Teletrasporto
tp @a[tag=target.selected] @s

# Stordimento
# -1 add_multiplied_total = x0: resta 0 anche se stackato con altre immobilizzazioni
$scoreboard players set @a[tag=target.selected] magnetic_impulse.counter $(duration)
tag @a[tag=target.selected] add magnetic_impulse.immobilized
execute as @a[tag=target.selected] run attribute @s movement_speed modifier add magnetic_impulse:immobilize -1 add_multiplied_total
execute as @a[tag=target.selected] run attribute @s jump_strength modifier add magnetic_impulse:immobilize -1 add_multiplied_total

# Chiusura ricerca
function skills:auxiliary/targeting/clear

# Uccisione
kill @s
