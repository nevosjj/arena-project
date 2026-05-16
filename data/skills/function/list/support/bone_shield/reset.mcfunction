scoreboard players reset @s counter.support
tag @s remove skill.bone_shield
playsound entity.skeleton.death player @a ~ ~ ~ 2 0.8
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4
particle white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100 force
$tag @s remove owner_$(ID).bone_shield
kill @e[type=marker,distance=..3,limit=1,sort=nearest,tag=bone_shield.finder]