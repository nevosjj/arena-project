function recording:check/put_glass
function recording:insert/everything
clear @s barrier
playsound minecraft:block.vault.deactivate ui @s ~ ~ ~ 10 1.15
item replace block 9 -55 39 container.26 with black_stained_glass_pane
data remove storage api.nevosjj.lobby:match_list temp.cursorIndex
