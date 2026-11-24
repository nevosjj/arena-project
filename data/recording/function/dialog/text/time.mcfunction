##########################################################
## Chiamata da recording:dialog/pages/*                 ##
## Esecutore: il giocatore (score temp)                 ##
## Macro: un compound con m e s                         ##
## Scrive "m:ss" in recording:view time                 ##
##########################################################

$scoreboard players set @s temp $(s)
$execute if score @s temp matches ..9 run return run data modify storage recording:view time set value "$(m):0$(s)"
$data modify storage recording:view time set value "$(m):$(s)"
