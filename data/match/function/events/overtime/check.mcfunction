###################################################################
## Chiamata da root:ticks/stopwatches (se match:overtime esiste) ##
## Macro: match_data:1v1 list.1v1 (overtime, overtimeDamage)     ##
## Dopo "overtime" secondi dall'apertura dei cancelli attiva     ##
## l'overtime.                                                   ##
###################################################################

$execute if stopwatch match:overtime $(overtime).. run function match:events/overtime with storage match_data:1v1 list.1v1
