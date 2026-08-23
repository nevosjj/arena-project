## Pulizia entità
kill @e[type=marker]
kill @e[type=block_display,tag=bone_shield.visual]

## Obiettivi

# counter & duration
scoreboard players reset @a counter.support
scoreboard players reset @a counter.offensive
scoreboard players reset @a counter.offensive2
scoreboard players reset @a counter.offensive3
scoreboard players reset @a counter.offensive4
scoreboard players reset @a counter.utility
scoreboard players reset @a counter.utility2
scoreboard players reset @a duration.offensive
scoreboard players reset @a duration.offensive2
scoreboard players reset @a duration.support
scoreboard players reset @a duration.utility

# effect counter
scoreboard players reset @a freeze_breath.counter
scoreboard players reset @a lightning_strike.counter
scoreboard players reset @a magnetic_impulse.counter

## Tags
tag @a remove flame_sword.energy
tag @a remove flame_sword.p0
tag @a remove flame_sword.p2
tag @a remove skill.bone_shield
tag @a remove owner_1.bone_shield
tag @a remove owner_2.bone_shield
tag @a remove owner_3.bone_shield
tag @a remove owner_4.bone_shield