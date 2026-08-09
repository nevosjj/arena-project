data modify storage arenaproject:ability_data skills.utility set value [\
    {\
        meta: {\
            abilityName:"end_teleport",\
            abilityType:"utility",\
            abilityEffect:"movement"\
        },\
        technical: {\
            cooldown:20,\
            range:9f\
        },\
        display: {\
            name:"Teletrasporto dell'End",\
            item:"minecraft:ender_pearl",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Teletrasporto frontale che si ferma"},\
                {"bold":false,"color":"gray","italic":false,"text":"davanti a blocchi solidi."},\
                {"bold":false,"color":"gray","italic":false,"text":"Ottieni velocità movimento extra."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"20s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Buff: "},{"bold":true,"color":"light_purple","italic":false,"text":"+25% per 5s"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"magnetic_impulse",\
            abilityType:"utility",\
            abilityEffect:"control"\
        },\
        technical: {\
            cooldown:32,\
            duration:60,\
            range:8f,\
            immobilization:3\
        },\
        display: {\
            name:"Impulso magnetico",\
            item:"minecraft:copper_ingot",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Attrai i nemici e i potenziamenti nel"},\
                {"bold":false,"color":"gray","italic":false,"text":"raggio sulla tua posizione, immobilizza i nemici."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"32s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"8"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"swap",\
            abilityType:"utility",\
            abilityEffect:"movement"\
        },\
        technical: {\
            cooldown:45,\
            delay:60\
        },\
        display: {\
            name:"Scambio",\
            item:"minecraft:repeater",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Bersaglia un nemico nella tua direzione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Dopo un breve ritardo, vi scambiate di posizione."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"45s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Ritardo: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"cobwebs",\
            abilityType:"utility",\
            abilityEffect:"control"\
        },\
        technical: {\
            cooldown:30,\
            projectileSpeed:6,\
            areaRange:3,\
            areaDuration:180,\
            stunDuration:40\
        },\
        display: {\
            name:"Ragnatele",\
            item:"minecraft:cobweb",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Spara di fronte a te delle ragnatele."},\
                {"bold":false,"color":"gray","italic":false,"text":"Creano un'area per un breve periodo che stordiscono."},\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"30s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettili: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio area: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata area: "},{"bold":true,"color":"light_purple","italic":false,"text":"9s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata stordimento: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"tornado",\
            abilityType:"utility",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cooldown:35,\
            duration:200,\
            damage:10,\
            range:8\
        },\
        display: {\
            name:"Tornado",\
            item:"minecraft:wind_charge",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Evoca un tornado nell'area."},\
                {"bold":false,"color":"gray","italic":false,"text":"Avanza lentamente."},\
                {"bold":false,"color":"gray","italic":false,"text":"Arreca danni ad intervalli."},\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"42s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"10s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Danni: "},{"bold":true,"color":"light_purple","italic":false,"text":"10/1s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"8 blocchi"}]]\
        }\
    }\
]