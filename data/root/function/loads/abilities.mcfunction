tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Storage","color":"#f5ace5","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Dati abilità...","color":"gray"}]

data modify storage arenaproject:ability_data skills set value {\
    offensive: [\
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
            abilityLore: [[{"bold":false,"color":"gray","italic":false,"text":"Spara dei biscotti davanti a te."}],\
                        {"bold":false,"color":"gray","italic":false,"text":"Infliggono danni ciascuno."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"35"}],\
                                [{"bold":false,"color":"red","italic":false,"text":"Danno per biscotto: "},{"bold":true,"color":"light_purple","italic":false,"text":"15"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Biscotti: "},{"bold":true,"color":"light_purple","italic":false,"text":"7"}],\
                                        [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                                            [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettile: "},\
                                                {"bold":true,"color":"light_purple","italic":false,"text":"17"}]," ",\
                                                [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}],\
                                                ],\
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
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Crea un cono di fronte a te, che danneggia"},\
                {"bold":false,"color":"gray","italic":false,"text":"e rallenta i nemici coinvolti."},\
                {"bold":false,"color":"gray","italic":false,"text":"Se il cono attraverso una parete, il danno si riduce."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"90"}],\
                                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"125"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Rallentamento: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s 35%"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Danno ridotto: "},{"bold":true,"color":"red","italic":false,"text":"80"}]," ",\
                                            [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}]],\
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
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Lungo la tua linea visiva, evoca"},\
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
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Converti la tua energia in durata abilità."},\
                {"bold":false,"color":"gray","italic":false,"text":"Sputa inchiostro rapidamente verso la tua direzione,"},\
                {"bold":false,"color":"gray","italic":false,"text":"se supera una certa durata, il danno aumenta."},\
                {"bold":false,"color":"gray","italic":false,"text":"La produzione di energia si ferma durante l'uso."},\
                            [{"bold":false,"color":"green","italic":false,"text":"Energia minima: "},{"bold":true,"color":"light_purple","italic":false,"text":"20"}],\
                            [{"bold":false,"color":"green","italic":false,"text":"Conversione: "},{"bold":true,"color":"light_purple","italic":false,"text":"1s/20e"}],\
                                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"2"}],\
                                [{"bold":false,"color":"red","italic":false,"text":"Danno potenziato: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"4"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Potenziamento danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s+, proiettili diventano arcobaleni"}],\
                                    [{"bold":false,"color":"red","italic":false,"text":"Frequenza proiettili: "},{"bold":true,"color":"light_purple","italic":false,"text":"0,15s"}],\
                                            ]\
        }\
    ],\
    utility: [\
        {\
            abilityDisplay:"Teletrasporto dell'End",\
            abilityName:"end_teleport",\
            abilityType:"utility",\
            abilityID:0,\
            abilityCooldown:20,\
            abilityRange:9f,\
            abilityItem:"minecraft:ender_pearl",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Teletrasporto frontale che si ferma"},\
                {"bold":false,"color":"gray","italic":false,"text":"davanti a blocchi solidi."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Ottieni velocità movimento extra."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"20s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Buff: "},{"bold":true,"color":"light_purple","italic":false,"text":"+25% per 5s"}]],\
        },\
        {\
            abilityDisplay:"Impulso magnetico",\
            abilityName:"magnetic_impulse",\
            abilityType:"utility",\
            abilityID:1,\
            abilityCooldown:32,\
            abilityDuration:3,\
            abilityRange:8f,\
            abilityDuration:60,\
            abilityItem:"minecraft:copper_ingot",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Attrai i nemici e i potenziamenti nel"},\
                {"bold":false,"color":"gray","italic":false,"text":"raggio sulla tua posizione, immobilizza i nemici."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"32s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"8"}]],\
        },\
        {\
            abilityDisplay:"Scambio",\
            abilityName:"swap",\
            abilityType:"utility",\
            abilityID:2,\
            abilityCooldown:45,\
            abilityItem:"minecraft:repeater",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Bersaglia un nemico nella tua direzione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Dopo un breve ritardo, vi scambiate di posizione."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"45s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Ritardo: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}]],\
        },\
        {\
            abilityDisplay:"Ragnatele",\
            abilityName:"cobwebs",\
            abilityType:"utility",\
            abilityID:3,\
            abilityCooldown: 30,\
            abilityItem:"minecraft:cobweb",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Spara di fronte a te delle ragnatele."},\
                {"bold":false,"color":"gray","italic":false,"text":"Creano un'area per un breve periodo che stordiscono."},\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"30s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettili: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio area: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata area: "},{"bold":true,"color":"light_purple","italic":false,"text":"9s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata stordimento: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}]],\
        },\
        {\
            abilityDisplay:"Tornado",\
            abilityName:"tornado",\
            abilityType:"utility",\
            abilityID:4,\
            abilityCooldown: 35,\
            abilityItem:"minecraft:wind_charge",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Evoca un tornado nell'area."},\
                {"bold":false,"color":"gray","italic":false,"text":"Avanza lentamente."},\
                {"bold":false,"color":"gray","italic":false,"text":"Arreca danni ad intervalli."},\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"42s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"10s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Danni: "},{"bold":true,"color":"light_purple","italic":false,"text":"10/1s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"8 blocchi"}]]\
        },\
    ],\
    support: [\
        {\
            abilityDisplay:"Mela dorata",\
            abilityName:"golden_apple",\
            abilityType:"support",\
            abilityID:0,\
            abilityEffect:"heal",\
            abilityPower:300,\
            abilityCooldown:18,\
            abilityRange:5,\
            abilityItem:"minecraft:golden_apple",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Guarisci dei danni a te e agli alleati."},\
                {"bold":false,"color":"gray","italic":false,"text":"Rimuove i debuff."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"18s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Cura: "},{"bold":true,"color":"light_purple","italic":false,"text":"300"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}]],\
        },\
        {\
            abilityDisplay:"Scudo osseo",\
            abilityName:"bone_shield",\
            abilityType:"support",\
            abilityID:1,\
            abilityCount:5,\
            abilityPower:50,\
            abilityDuration:80,\
            abilityCooldown:12,\
            abilityItem:"minecraft:bone",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Dei teschi ti circondano per una breve durata."},\
                {"bold":false,"color":"gray","italic":false,"text":"Bloccano di una percentuale i danni in arrivo."}, " ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"12s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Teschi: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Difesa conferita: "},{"bold":true,"color":"light_purple","italic":false,"text":"+50%"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"4s"}]],\
        },\
        {\
            abilityDisplay:"Catena vampirica",\
            abilityName:"vampiric_chain",\
            abilityType:"support",\
            abilityID:2,\
            abilityEffect:"heal",\
            abilityRange:6f,\
            abilityPower:12,\
            abilityCooldown:40,\
            abilityItem:"minecraft:oak_sapling",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Concatena te ed il nemico più vicino."},\
                {"bold":false,"color":"gray","italic":false,"text":"Ti curi di una percentuale del danno arrecato."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Se il nemico esce dal raggio, la catena si spezza."},\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"40s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Percentuale cura: "},{"bold":true,"color":"light_purple","italic":false,"text":"12%"}]],\
        },\
        {\
            abilityDisplay:"Melodia del potere",\
            abilityName:"melody_of_power",\
            abilityType:"support",\
            abilityID:2,\
            abilityEffect:"heal",\
            abilityCooldown:27,\
            abilityItem:"minecraft:note_block",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Ottieni un potenziamento per"},\
                {"bold":false,"color":"gray","italic":false,"text":"una breve durata."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"27s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"7s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Potenziamento: "}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +20% difesa corpo a corpo"}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > 1.2x velocità generazione energia"}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +1 energia per colpo"}]]\
        }\
    ],\
    ultimate: [\
        {\
            abilityDisplay:"Fungo Apocalittico",\
            abilityName:"doom_shroom",\
            abilityType:"ultimate",\
            abilityID:0,\
            abilityPower:50,\
            damage_boom:300,\
            abilityCooldown:85,\
            abilityDuration:12,\
            abilityHealth:8,\
            abilityItem:"minecraft:brown_mushroom",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Pianta un fungo in posizione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Cresce nel tempo, danneggiando nel raggio."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Alla fine della crescita, esplode."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Può essere distrutto dai nemici."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"85s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"15"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata crescita: "},{"bold":true,"color":"light_purple","italic":false,"text":"20s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Danno al secondo: "},{"bold":true,"color":"light_purple","italic":false,"text":"10"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Danno esplosione: "},{"bold":true,"color":"light_purple","italic":false,"text":"500"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Salute: "},{"bold":true,"color":"light_purple","italic":false,"text":"500"}]],\
        },\
        {\
            abilityDisplay:"Incantamento",\
            abilityName:"enchantment",\
            abilityType:"ultimate",\
            abilityID:1,\
            abilityItem:"minecraft:enchanting_table",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Amplifica le proprietà"},\
                    {"bold":false,"color":"gray","italic":false,"text":"delle tue abilità."},\
                            [{"bold":false,"color":"green","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"20s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio abilità: "},{"bold":true,"color":"light_purple","italic":false,"text":"+20%"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata abilità: "},{"bold":true,"color":"light_purple","italic":false,"text":"+20%"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Velocità proiettili: "},{"bold":true,"color":"light_purple","italic":false,"text":"+20%"}]],\
        }\
    ]\
}