# Riempimento slot con oggetto
# IMPORTANTE: l'inserimento nello slot dell'oggetto viene basato dall'ID dell'oggetto.
# Potevo farlo basare su uno score, o come fatto in precedenza, da un abilitySlot, ma lo trovavo ridondante.
# Specialmente contando che gli ID si resettano da tipologia a tipologia.

$item replace entity @e[type=chest_minecart,limit=1,distance=..4,sort=nearest] container.$(index) with \
    $(item)[ \
        custom_data={select_skill:true,item_skill_id:$(index),item_skill_type:$(abilityType)}, \
        custom_name={"bold":true,"color":"red","italic":false,"text":"$(name)"}, \
            lore=$(lore), \
                                ] 1