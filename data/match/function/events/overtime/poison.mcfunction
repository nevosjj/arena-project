######################################################
## Chiamato da match:events/overtime/neon           ##
## Macro: match_data:1v1 list.1v1 (overtimePoison)  ##
## Avvelena il giocatore di overtimePoison al       ##
## secondo. Non uccide: la vita resta almeno a 1.   ##
######################################################

# Feedback
playsound minecraft:entity.player.hurt_sweet_berry_bush ui @s ~ ~ ~ 0.1 2 0.1

# Riduzione vita
$scoreboard players remove @s stat.current_health $(overtimePoison)
execute if score @s stat.current_health matches ..0 run scoreboard players set @s stat.current_health 1

# Update display
function match:display/update
