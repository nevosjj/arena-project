################################################
## Chiamata da skills:activations/flow/marker ##
## Esecutore: il caster                       ##
################################################

# Feedback audio
function skills:list/offensive/freeze_breath/feedback

# Spirale
    # Il marker esegue alla sua posizione ma con la rotazione del caster (pitch compreso),
    # così le coordinate locali della spirale seguono la visuale anche in verticale.
execute rotated as @s as @e[type=marker,distance=..2,sort=nearest,limit=1,tag=freeze_breath.marker] positioned as @s run function skills:list/offensive/freeze_breath/setup
