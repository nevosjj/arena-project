data modify storage ability_data:support skills set value [\
    {\
        meta: {\
            abilityName:"golden_apple",\
            abilityType:"support",\
            abilityEffect:"heal"\
        },\
        technical: {\
            cooldown:18,\
            range:5,\
            power:300\
        },\
        display: {\
            name:"Mela dorata",\
            item:"golden_apple",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 18 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","italic":false,"text":"Vita guarita"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 300 punti salute"}]],"minecraft:item_model":"glistering_melon_slice"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Raggio d'azione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 5 blocchi"}]],"minecraft:item_model":"splash_potion"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Mela dorata"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Consuma una mela dorata, curandoti istantaneamente"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Cura anche gli alleati vicini"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Rimuove i depotenziamenti"}]],"minecraft:item_model":"golden_apple"}}]},\
            }\
    },\
    {\
        meta: {\
            abilityName:"bone_shield",\
            abilityType:"support",\
            abilityEffect:"buff"\
        },\
        technical: {\
            cooldown:12,\
            count:5,\
            power:50,\
            duration:80\
        },\
        display: {\
            name:"Scudo osseo",\
            item:"bone",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 12 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Durata"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 4 secondi"}]],"minecraft:item_model":"clock"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Numeri di teschi"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 5 teschi"}]],"minecraft:item_model":"skeleton_skull"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Scudo osseo"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Dei teschi ti circondano per una breve durata"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Conferiscono resistenza ai danni"}]],"minecraft:item_model":"bone"}},{Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Difesa conferita"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 50% riduzione danni"}]],"minecraft:item_model":"iron_chestplate"}}]},\
            }\
    },\
    {\
        meta: {\
            abilityName:"vampiric_chain",\
            abilityType:"support",\
            abilityEffect:"heal"\
        },\
        technical: {\
            cooldown:40,\
            range:12f,\
            power:35,\
            condition:{raycast:"true",range:7f},\
        },\
        display: {\
            name:"Catena vampirica",\
            item:"ghast_tear",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 40 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","italic":false,"text":"Percentuale di conversione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 35% del danno in vita"}]],"minecraft:item_model":"golden_apple"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Raggio d'azione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 12 blocchi"}]],"minecraft:item_model":"splash_potion"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Catena vampirica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Concatena te ed un nemico visibile di fronte a te"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Ti curi di una percentuale del danno arrecato al bersaglio"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Se il nemico esce fuori dal raggio della catena, si spezza"}]],"minecraft:item_model":"ghast_tear"}},{Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Gittata d'aggancio"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 7 blocchi"}]],"minecraft:item_model":"compass"}}]},\
            }\
    },\
    {\
        meta: {\
            abilityName:"regen_dispenser",\
            abilityType:"support",\
            abilityEffect:"buff",\
        },\
        technical: {\
            cooldown:28,\
            duration:180,\
            power:75,\
            delay:60,\
            health:50,\
            motion:26,\
            aimRange:7f,\
            range:1.3f,\
            distance:15\
        },\
        display: {\
            name:"Distributore rigenerativo",\
            item:"dispenser",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 28 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_green","italic":false,"text":"Vita guarita"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 75 punti salute per proiettile"}]],"minecraft:item_model":"glistering_melon_slice"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Durata"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 9 secondi"}]],"minecraft:item_model":"clock"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Distributore rigenerativo"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Evoca un distributore volante che mira all'alleato più vicino"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Spara periodicamente un rapido proiettile"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Il proiettile cura il primo bersaglio alleato che trova"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Può essere distrutto da attacchi corpo a corpo e da abilità"}]],"minecraft:item_model":"dispenser"}},{Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Intervallo di sparo"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Ogni 3 secondi"}]],"minecraft:item_model":"repeater"}},{Slot:13b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Vita del distributore"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 50 punti salute"}]],"minecraft:item_model":"shield"}},{Slot:14b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Velocità proiettili"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 26 velocità in aria"}]],"minecraft:item_model":"iron_boots"}}]},\
            }\
    }\
]