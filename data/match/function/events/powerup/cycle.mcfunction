########################################################################
## Chiamata da root:ticks/stopwatches (se match:powerup/cycle esiste) ##
## Macro: match_data:1v1 list.1v1 (powerupWait)                       ##
## Finita l'attesa annuncia il potenziamento.                         ##
########################################################################

$execute if stopwatch match:powerup/cycle $(powerupWait).. run function match:events/powerup/announce
