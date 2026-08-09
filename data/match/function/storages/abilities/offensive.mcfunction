data modify storage arenaproject:ability_data skills.offensive set value [\
    {\
        abilityDisplay:"Spara Biscotto",\
        abilityName:"cookie_blaster",\
        abilityType:"offensive",\
        abilityEffect:"damage",\
        abilityID:0,\
        abilityRange:1.5f,\
        abilityPower:9,\
        abilityCost:50,\
        abilityDistance:9,\
        abilityMotion:17,\
        abilityItem:"minecraft:cookie",\
        abilityLore:[[{"bold":false,"color":"gray","italic":false,"text":"Spara dei biscotti davanti a te."}],\
                    {"bold":false,"color":"gray","italic":false,"text":"Infliggono danni ciascuno."}," ",\
                        [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"35"}],\
                            [{"bold":false,"color":"red","italic":false,"text":"Danno per biscotto: "},{"bold":true,"color":"light_purple","italic":false,"text":"15"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Biscotti: "},{"bold":true,"color":"light_purple","italic":false,"text":"7"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                                        [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettile: "},\
                                            {"bold":true,"color":"light_purple","italic":false,"text":"17"}]," ",\
                                            [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}]\
                                            ]\
    },\
    {\
        abilityDisplay:"Respiro congelante",\
        abilityName:"freeze_breath",\
        abilityType:"offensive",\
        abilityEffect:"damage",\
        abilityID:1,\
        abilityRange:0.0f,\
        abilityDistance:6f,\
        abilityPower:125,\
        abilityPowerDown:80,\
        abilitySlow:35,\
        abilityDuration:60,\
        abilityCost:90,\
        abilityItem:"minecraft:packed_ice",\
        abilityLore:[{"bold":false,"color":"gray","italic":false,"text":"Crea un cono di fronte a te, che danneggia"},\
            {"bold":false,"color":"gray","italic":false,"text":"e rallenta i nemici coinvolti."},\
            {"bold":false,"color":"gray","italic":false,"text":"Se il cono attraverso una parete, il danno si riduce."}," ",\
                        [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"90"}],\
                            [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"125"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Rallentamento: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s 35%"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Danno ridotto: "},{"bold":true,"color":"red","italic":false,"text":"80"}]," ",\
                                        [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}]]\
    },\
    {\
        abilityDisplay:"Colpo folgorante",\
        abilityName:"lightning_strike",\
        abilityType:"offensive",\
        abilityEffect:"damage",\
        abilityID:2,\
        abilityRange:2f,\
        abilityLength:24f,\
        abilityPower:77,\
        abilityCost:77,\
        abilityEffect:1.0,\
        abilityDuration:40,\
        abilityCharge:25,\
        abilityItem:"minecraft:glowstone_dust",\
        abilityLore:[{"bold":false,"color":"gray","italic":false,"text":"Lungo la tua linea visiva, evoca"},\
            {"bold":false,"color":"gray","italic":false,"text":"un fulmine sulla destinazione, che si"},\
                {"bold":false,"color":"gray","italic":false,"text":"scatena dopo un breve ritardo."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Infligge danni ed immobilizza."}," ",\
                        [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"77"}],\
                            [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"77"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"24"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio danni: "},{"bold":true,"color":"light_purple","italic":false,"text":"2"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Ritardo: "},{"bold":true,"color":"light_purple","italic":false,"text":"1,25s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}]]\
    },\
    {\
        abilityDisplay:"Sputo d'inchiostro",\
        abilityName:"ink_spit",\
        abilityType:"offensive",\
        abilityEffect:"damage",\
        abilityID:3,\
        abilityCost:20,\
        abilityItem:"minecraft:ink_sac",\
        abilityLore:[{"bold":false,"color":"gray","italic":false,"text":"Converti la tua energia in durata abilità."},\
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
]