##############################################################################################
## Chiamata da skills:activations/flow/generic                                              ##
## Macro: storage arenaproject:game_memory temporary.activation (skillTYPE_txt, skillIndex) ##
## Passa i meta dell'abilità attivata a skills:activations/flow/marker.                     ##
##############################################################################################

# Chiamata della funzione di ricerca che chiama la directory giusta dell'abilità tramite macro
# Creerà inoltre anche un marker dove verranno iniettate le informazioni
$function skills:activations/flow/marker with storage ability_data:$(skillTYPE_txt) skills[$(skillIndex)].meta
