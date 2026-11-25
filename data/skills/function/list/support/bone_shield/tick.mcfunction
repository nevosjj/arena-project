# Feedback continuo dello scudo: ogni secondo (duration.support multiplo di 20)
execute if predicate skills:bone_shield/second at @s run playsound entity.skeleton.step player @a ~ ~ ~ 2 1.5

scoreboard players remove @s duration.support 1
execute if score @s duration.support matches 0 at @s run function skills:list/support/bone_shield/marker_timer