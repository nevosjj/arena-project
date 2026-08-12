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
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Guarisci dei danni a te e agli alleati."},\
                {"bold":false,"color":"gray","italic":false,"text":"Rimuove i debuff."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"18s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Cura: "},{"bold":true,"color":"light_purple","italic":false,"text":"300"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}]]\
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
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Dei teschi ti circondano per una breve durata."},\
                {"bold":false,"color":"gray","italic":false,"text":"Bloccano di una percentuale i danni in arrivo."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"12s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Teschi: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Difesa conferita: "},{"bold":true,"color":"light_purple","italic":false,"text":"+50%"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"4s"}]]\
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
            abilityName:"melody_of_power",\
            abilityType:"support",\
            abilityEffect:"buff"\
        },\
        technical: {\
            cooldown:27,\
            duration:140\
        },\
        display: {\
            name:"Melodia del potere",\
            item:"note_block",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Ottieni un potenziamento per"},\
                {"bold":false,"color":"gray","italic":false,"text":"una breve durata."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"27s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"7s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Potenziamento: "}],\
                [{"bold":false,"color":"gold","italic":false,"text":"    > +20% difesa corpo a corpo"}],\
                [{"bold":false,"color":"gold","italic":false,"text":"    > 1.2x velocità generazione energia"}],\
                [{"bold":false,"color":"gold","italic":false,"text":"    > +1 energia per colpo"}]]\
        }\
    }\
]