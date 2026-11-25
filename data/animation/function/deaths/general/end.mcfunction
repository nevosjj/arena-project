## Controlla chi è morto con i dati del manichino che è appena esploso
$execute as @a[limit=1,sort=nearest,tag=animation.loser_$(ID)] run function match:events/check_life
$tag @a[limit=1,sort=nearest,tag=animation.loser_$(ID)] remove animation.loser_$(ID)