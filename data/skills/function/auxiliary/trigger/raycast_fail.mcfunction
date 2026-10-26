$scoreboard players set @e[type=player,limit=1,sort=nearest,tag=$(skillTYPE_txt).condition.target_$(ID)] condition.$(skillTYPE_txt) 2
$tag @p[tag=$(skillTYPE_txt).condition.target_$(ID)] remove $(skillTYPE_txt).condition.target_$(ID)
kill @s