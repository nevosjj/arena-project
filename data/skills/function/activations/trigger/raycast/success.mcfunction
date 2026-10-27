data remove storage arenaproject:game_memory temporary.condition
$tag @p[tag=$(skillTYPE_txt).condition.user_$(ID)] remove $(skillTYPE_txt).condition.user_$(ID)
$tag @p[distance=..1.5,limit=1,sort=nearest,tag=!$(skillTYPE_txt).condition.user_$(ID)] add $(skillTYPE_txt).skill_target.$(ID)
kill @s