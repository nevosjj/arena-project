data modify storage ability_data:offensive skills set value [\
    {\
        meta: {\
            abilityName:"cookie_blaster",\
            abilityType:"offensive",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cost:50,\
            range:1.5f,\
            power:9,\
            distance:9,\
            motion:17,\
        },\
        display: {\
            name:"Spara Biscotto",\
            item:"cookie",\
            lore:[[{"bold":false,"color":"gray","italic":false,"text":"Spara dei biscotti davanti a te."}],\
                {"bold":false,"color":"gray","italic":false,"text":"Infliggono danni ciascuno."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"35"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Danno per biscotto: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Biscotti: "},{"bold":true,"color":"light_purple","italic":false,"text":"7"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettile: "},{"bold":true,"color":"light_purple","italic":false,"text":"17"}]," ",\
                [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"freeze_breath",\
            abilityType:"offensive",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cost:90,\
            range:0.0f,\
            distance:6f,\
            power:125,\
            powerDown:80,\
            slow:35,\
            duration:60\
        },\
        display: {\
            name:"Respiro congelante",\
            item:"packed_ice",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Crea un cono di fronte a te, che danneggia"},\
                {"bold":false,"color":"gray","italic":false,"text":"e rallenta i nemici coinvolti."},\
                {"bold":false,"color":"gray","italic":false,"text":"Se il cono attraverso una parete, il danno si riduce."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"90"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"125"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Rallentamento: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s 35%"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Danno ridotto: "},{"bold":true,"color":"red","italic":false,"text":"80"}]," ",\
                [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"lightning_strike",\
            abilityType:"offensive",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cost:75,\
            range:2f,\
            length:24f,\
            power:80,\
            duration:40,\
            charge:25\
        },\
        display: {\
            name:"Colpo folgorante",\
            item:"glowstone_dust",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Lungo la tua linea visiva, evoca"},\
                {"bold":false,"color":"gray","italic":false,"text":"un fulmine sulla destinazione, che si"},\
                {"bold":false,"color":"gray","italic":false,"text":"scatena dopo un breve ritardo."},\
                {"bold":false,"color":"gray","italic":false,"text":"Infligge danni ed immobilizza."}," ",\
                [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"77"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"77"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"24"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio danni: "},{"bold":true,"color":"light_purple","italic":false,"text":"2"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Ritardo: "},{"bold":true,"color":"light_purple","italic":false,"text":"1,25s"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"ink_spit",\
            abilityType:"offensive",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cost:20,\
            duration:0\
        },\
        display: {\
            name:"Sputo d'inchiostro",\
            item:"ink_sac",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"Converti la tua energia in durata abilità."},\
                {"bold":false,"color":"gray","italic":false,"text":"Sputa inchiostro rapidamente verso la tua direzione,"},\
                {"bold":false,"color":"gray","italic":false,"text":"se supera una certa durata, il danno aumenta."},\
                {"bold":false,"color":"gray","italic":false,"text":"La produzione di energia si ferma durante l'uso."},\
                [{"bold":false,"color":"green","italic":false,"text":"Energia minima: "},{"bold":true,"color":"light_purple","italic":false,"text":"20"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Conversione: "},{"bold":true,"color":"light_purple","italic":false,"text":"1s/20e"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"2"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Danno potenziato: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"4"}],\
                [{"bold":false,"color":"yellow","italic":false,"text":"Potenziamento danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s+, proiettili diventano arcobaleni"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Frequenza proiettili: "},{"bold":true,"color":"light_purple","italic":false,"text":"0,15s"}]]\
        }\
    },\
    {\
        meta: {\
            abilityName:"flame_sword",\
            abilityType:"offensive",\
            abilityEffect:"damage"\
        },\
        technical: {\
            cost:80,\
            duration:40,\
            hit:2,\
            range: 3.0,\
        },\
        display: {\
            name:"Spada di fiamme",\
            item:"blaze_rod",\
            lore:[{"bold":false,"color":"gray","italic":false,"text":"L'energia smette di generarsi e aumenta il range d'attacco."},\
                {"bold":false,"color":"gray","italic":false,"text":"I tuoi colpi arrecano danni extra in base alla combo."},\
                {"bold":false,"color":"gray","italic":false,"text":"Si interrompe se ricevi colpi, non attacchi in tempo, "},\
                {"bold":false,"color":"gray","italic":false,"text":"oppure raggiungi il limite."},\
                {"bold":false,"color":"gray","italic":false,"text":"Alla fine, ottieni effetti extra in base alla combo."},\
                [{"bold":false,"color":"green","italic":false,"text":"Costo: "},{"bold":true,"color":"light_purple","italic":false,"text":"80"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Raggio d'attacco: "},{"bold":true,"color":"light_purple","italic":false,"text":"+10%"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Danno extra: "},{"bold":true,"color":"light_purple","italic":false,"text":"+1/combo"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Limite combo: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Tempo di esaurimento: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}],\
                [{"bold":false,"color":"red","italic":false,"text":"Colpi all'interruzione: "},{"bold":true,"color":"light_purple","italic":false,"text":"2"}],\
                [{"bold":false,"color":"green","italic":false,"text":"Effetto alla fine: "},{"bold":true,"color":"light_purple","italic":false,"text":"+2 energia/combo"}]],\
        }\
    }\
]