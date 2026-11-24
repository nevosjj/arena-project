#############################################################
## Chiamata da health:math/incoming_damage                 ##
## (melee e abilità, danno > 0, pool > 0)                  ##
## Esecutore: il giocatore colpito                         ##
## Toglie min(pool, regenDrain) dalla pool; quello tolto   ##
## è perso (poststat.regen_lost).                          ##
## Provider: health:regen/drain*                           ##
#############################################################

# Statistiche post-partita, PRIMA di ridurre la pool
execute store result score @s poststat.regen_lost run compute entity @s integer health:regen/drain_lost_stat

# Riduzione della pool
execute store result score @s stat.regeneration_pool run compute entity @s integer health:regen/drained_pool

# Pool vuota
execute if score @s stat.regeneration_pool matches ..0 run scoreboard players reset @s stat.regeneration_timer
execute if score @s stat.regeneration_pool matches ..0 run scoreboard players reset @s stat.regeneration_pool
