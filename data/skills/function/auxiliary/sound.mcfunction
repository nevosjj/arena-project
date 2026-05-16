## La funzione carica in sequenza un suono di un'abilità, aumentando il pitch ad ogni tick.
## Viene usata soprattutto per abilità che caricano qualcosa.

execute store result entity @s data.soundPitch float 0.015 run scoreboard players add @s sound 1
$playsound $(soundName) ambient @a ~ ~ ~ 2 $(soundPitch)