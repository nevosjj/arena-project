data modify storage ability_data:utility skills set value [\
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
            item:"ender_pearl",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Teletrasporto frontale che si ferma"},\
                {"bold":false,"color":"gray","italic":false,"text":"davanti a blocchi solidi."}," ",\
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
            item:"copper_ingot",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Attrai i nemici e i potenziamenti nel"},\
                {"bold":false,"color":"gray","italic":false,"text":"raggio sulla tua posizione, immobilizza i nemici."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"32s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"8"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"tornado",\
            abilityType:"utility",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cooldown:42,\
            duration:180,\
            power:8,\
            range:7,\
            interval:20\
        },\
        display: {\
            name:"Tornado",\
            item:"wind_charge",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Evoca un tornado per un breve periodo."},\
                {"bold":false,"color":"gray","italic":false,"text":"Arreca danni ad intervalli"},\
                {"bold":false,"color":"gray","italic":false,"text":"e lancia in alto i proiettili nell'area."},\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"42s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Danni: "},{"bold":true,"color":"light_purple","italic":false,"text":"8/s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"7 blocchi"}]]\
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
            item:"repeater",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Bersaglia un nemico nella tua direzione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Dopo un breve ritardo, vi scambiate di posizione."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"45s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Ritardo: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}]]\
        }\
    },\
]