## Feedback (solo se non silenzioso)
tellraw @s[tag=!silent.cooldown.feedback] [\
    {"atlas":"minecraft:gui","sprite":"icon/unseen_notification"},\
    {"text":" >","color":"red"},\
    {"text":" L'abilità è in ricarica.","color":"gray"},\
    ]
playsound block.note_block.bass ui @s[tag=!silent.cooldown.feedback] ~ ~ ~ 1 0
scoreboard players set @s[tag=!silent.cooldown.feedback] antispam.ultimate 30

## Pulizia tag
tag @s remove silent.cooldown.feedback
tag @s remove ultimate.cooldown.failed
