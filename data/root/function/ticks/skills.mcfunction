###################################
## Lista tick utile alle abilità ##
###################################

# Interaction (Evocazioni)
execute as @e[type=interaction,tag=player_summon] at @s run function skills:auxiliary/summon/tick

# Bone shield
execute as @e[type=block_display,tag=bone_shield.visual] at @s run function skills:list/support/bone_shield/skill_tick with entity @s data
execute as @a[tag=skill.bone_shield] run function skills:list/support/bone_shield/tick

# Cookie blaster
execute as @e[type=item,tag=cookie.projectile,tag=ready] at @s run function skills:list/offensive/cookie_blaster/tick with entity @s data

# Freeze breath
execute as @a[tag=freeze_breath.slowed] at @s run function skills:list/offensive/freeze_breath/remove

# Magnetic impulse
execute as @a[tag=magnetic_impulse.immobilized] at @s run function skills:list/utility/magnetic_impulse/remove

# Switch
execute as @a[tag=switch.stunned] at @s run function skills:list/utility/switch/remove

# End teleport
execute as @a[tag=end_teleport.speed] run function skills:list/utility/end_teleport/remove

# Lightning strike
execute as @e[type=marker,tag=lightning_strike.loading] at @s run function skills:list/offensive/lightning_strike/tick with entity @s data
execute as @a[tag=lightning_strike.immobilized] at @s run function skills:list/offensive/lightning_strike/remove

# Flame sword
execute as @a[tag=flame_sword.energy] at @s run function skills:list/offensive/flame_sword/tick

# Tornado
execute as @e[type=marker,tag=tornado.marker] at @s run function skills:list/utility/tornado/tick with entity @s data

# Catena vampirica
execute as @e[type=marker,tag=vampiric_chain.marker,tag=ready] at @s run function skills:list/support/vampiric_chain/tick with entity @s data

# Distributore rigenerativo
# (l'evocazione è la hitbox: il tick gira al centro del dispenser, 0.3 sopra)
execute as @e[type=interaction,tag=regen_dispenser.summon] at @s positioned ~ ~0.3 ~ run function skills:list/support/regen_dispenser/tick with entity @s data
execute as @e[type=item,tag=regen_dispenser.projectile] at @s run function skills:list/support/regen_dispenser/projectile_tick with entity @s data

# Switch
execute as @e[type=marker,tag=switch.marker,tag=ready] at @s run function skills:list/utility/switch/tick with entity @s data
