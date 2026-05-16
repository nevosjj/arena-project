############
# INFO
# CHIAMATA DA skills/activations/generic
############

# Chiamata della funzione di ricerca che chiama la directory giusta dell'abilità tramite macro
# Creerà inoltre anche un marker dove verranno iniettate le informazioni
$function skills:activations/flow/marker with storage arenaproject:ability_data skills.$(skillTYPE_txt)[$(skillID)]