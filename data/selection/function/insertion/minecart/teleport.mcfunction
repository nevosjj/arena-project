# Teletrasporta il chest_minecart verso il giocatore accoppiato
$execute positioned as @e[type=player,limit=1,sort=nearest,distance=..2,tag=minecart_couple_$(ID)] run tp @s ~ ~1 ~