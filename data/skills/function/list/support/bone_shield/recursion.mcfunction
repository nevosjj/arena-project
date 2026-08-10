# Funzione ricorsiva per evocare i teschi
scoreboard players add @s temp 1

$summon block_display ^ ^ ^2 {NoGravity:1b,Rotation:[$(boneDegreesRot)f,0f],Tags:["bone_shield.visual","bone_shield.id$(ID)"],data:{ID:$(ID),abilityName:$(abilityName)}, \
    teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}, \
        block_state:{Name:"minecraft:skeleton_skull"}}
$tp @s ~ ~ ~ ~$(boneDegrees) ~

# Riottenimento variabile per poter evocare le block_display con la giusta rotazione da un punto all'altro.
scoreboard players operation @s temp3 += @s temp2
execute store result entity @s data.boneDegreesRot int 1.0 run scoreboard players get @s temp3

$execute if score @s temp matches $(count).. run return run function skills:list/support/bone_shield/end with entity @s data
$execute if score @s temp matches ..$(count) at @s run return run function skills:list/support/bone_shield/recursion with entity @s data