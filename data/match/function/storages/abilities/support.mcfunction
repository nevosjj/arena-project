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
            range:6f,\
            power:12\
        },\
        display: {\
            name:"Catena vampirica",\
            item:"ghast_tear",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Concatena te ed il nemico più vicino."},\
                {"bold":false,"color":"gray","italic":false,"text":"Ti curi di una percentuale del danno arrecato."},\
                {"bold":false,"color":"gray","italic":false,"text":"Se il nemico esce dal raggio, la catena si spezza."},\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"40s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Percentuale cura: "},{"bold":true,"color":"light_purple","italic":false,"text":"12%"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"regen_dispenser",\
            abilityType:"support",\
            abilityEffect:"buff",\
        },\
        technical: {\
            cooldown:38,\
            duration:180\
        },\
        display: {\
            name:"Distributore rigenerativo",\
            item:"dispenser",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Evoca un distributore volante che guarda"},\
                {"bold":false,"color":"gray","italic":false,"text":"verso la tua direzione, entro il raggio."},\
                {"bold":false,"color":"gray","italic":false,"text":"Spara periodicamente un proiettile che ti cura."},\
                {"bold":false,"color":"gray","italic":false,"text":"Può essere distrutto e ha una durata."},\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"38s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9s"}]],\
        }\
    }\
]