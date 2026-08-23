## Controlla chi è morto con i dati del manichino che è appena esploso
$execute as @e[type=player,limit=1,sort=nearest,tag=animation.loser_$(ID)] run function match:events/check_life
$tag @e[type=player,limit=1,sort=nearest,tag=animation.loser_$(ID)] remove animation.loser_$(ID)