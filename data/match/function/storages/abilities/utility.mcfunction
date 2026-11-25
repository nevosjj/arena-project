data modify storage ability_data:utility skills set value [\
    {\
        meta: {\
            abilityName:"end_teleport",\
            abilityType:"utility",\
            abilityEffect:"movement"\
        },\
        technical: {\
            cooldown:15,\
            range:9f,\
            speedPower:20f,\
            duration:60,\
        },\
        display: {\
            name:"Teletrasporto dell'End",\
            item:"ender_pearl",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 15 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Distanza percorribile"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 9 blocchi"}]],"minecraft:item_model":"saddle"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Velocità conferita"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" +20% velocità di movimento"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 3 secondi di durata"}]],"minecraft:item_model":"sugar"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Teletrasporto dell'End"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Ti teletrasporti in avanti"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Non puoi andare oltre i blocchi"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Ottieni velocità di movimento extra"}]],"minecraft:item_model":"ender_pearl"}}]},\
            }\
    },\
    {\
        meta: {\
            abilityName:"magnetic_impulse",\
            abilityType:"utility",\
            abilityEffect:"control"\
        },\
        technical: {\
            cooldown:35,\
            duration:40,\
            range:6f,\
            immobilization:2,\
            ignoreSummons:1b\
        },\
        display: {\
            name:"Impulso magnetico",\
            item:"copper_ingot",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 35 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Raggio d'azione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 6 blocchi"}]],"minecraft:item_model":"splash_potion"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Effetto d'immobilizzazione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 2 secondi di durata"}]],"minecraft:item_model":"raw_copper"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Impulso magnetico"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Teletrasporta sulla tua posizione i nemici nel raggio"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Li immobilizza per una breve durata"}]],"minecraft:item_model":"copper_ingot"}}]},\
            }\
    },\
    {\
        meta: {\
            abilityName:"switch",\
            abilityType:"utility",\
            abilityEffect:"movement"\
        },\
        technical: {\
            cooldown:25,\
            delayedCooldown:1b,\
            charge:40,\
            distance:8,\
            duration:40,\
            condition:{raycast:"true",range:16f},\
        },\
        display: {\
            name:"Scambio",\
            item:"repeater",\
            chestItems:{Items:[{Slot:3b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"light_purple","italic":false,"text":"Ricarica"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 25 secondi"}]],"minecraft:item_model":"book"}},{Slot:4b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Tempo di scambio"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 2 secondi"}]],"minecraft:item_model":"clock"}},{Slot:5b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Gittata d'aggancio"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 16 blocchi"}]],"minecraft:item_model":"compass"}},{Slot:10b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"gold","italic":false,"text":"Scambio"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Aggancia un nemico visibile di fronte a te"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Dopo un breve ritardo, vi scambiate di posizione"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Se siete abbastanza distanti al momento dello scambio, il nemico viene immobilizzato"}]],"minecraft:item_model":"repeater"}},{Slot:12b,id:"minecraft:white_wool",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"Effetto di immobilizzazione"},"minecraft:lore":[[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" 2 secondi di durata"}],[{"bold":true,"color":"dark_gray","italic":false,"text":"➤"},{"bold":false,"color":"gray","italic":false,"text":" Minimo 8 blocchi di distanza"}]],"minecraft:item_model":"poisonous_potato"}}]},\
            }\
    },\
]