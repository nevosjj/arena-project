tellraw @s [\
    {"atlas":"minecraft:gui","sprite":"icon/unseen_notification"},\
    {"text":" >","color":"red"},\
    {"text":" L'abilità è in ricarica.","color":"gray"},\
    ]

playsound block.note_block.bass ui @s ~ ~ ~ 1 0
scoreboard players set @s antispam.ultimate 30