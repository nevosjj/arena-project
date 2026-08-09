############
# INFO
# CHIAMATA DA skills/activations/generic
############

# Chiamata della funzione di ricerca che chiama la directory giusta dell'abilità tramite macro
# Creerà inoltre anche un marker dove verranno iniettate le informazioni
$function skills:activations/flow/marker with storage ability_data:$(skillTYPE_txt) skills[$(skillID)].technical