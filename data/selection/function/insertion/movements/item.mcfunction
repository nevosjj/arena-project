# Riempimento slot con oggetto

$item replace entity @e[type=chest_minecart,limit=1,distance=..4,sort=nearest] container.$(index) with \
    $(item)[ \
        custom_data={select_skill:true,item_skill_id:$(index),item_skill_type:$(abilityType)}, \
        custom_name={"bold":true,"color":"red","italic":false,"text":"$(name)"}] 1