
# Reset temporaneo da rifare
$tag @a remove vampiric_chain_user.$(ID)
$tag @a remove vampiric_chain_target.$(ID)

kill @s

playsound entity.blaze.hurt hostile @a ~ ~ ~ 2 1.4

particle cloud ~ ~1 ~ 0 0 0 1.0 10 force