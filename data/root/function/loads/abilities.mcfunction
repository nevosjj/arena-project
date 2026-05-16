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
            abilityDisplay:"Colpo folgorante",\
            abilityName:"lightning_strike",\
            abilityType:"offensive",\
            abilityEffect:"damage",\
            abilityID:1,\
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
            abilityDisplay:"Trappola creeper",\
            abilityName:"creeper_trap",\
            abilityType:"offensive",\
            abilityEffect:"damage",\
            abilityID:2,\
            abilityRange:4f,\
            abilityPower:80,\
            abilityCost:40,\
            abilityItem:"minecraft:creeper_head",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Evoca un piccolo creeper in posizione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Dopo un breve periodo, si innesca."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Esplode se ci sono nemici nel raggio."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Esiste un massimo, permane tra i round."}," ",\
                        [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"45"}],\
                            [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"80"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"4"}],\
                                [{"bold":false,"color":"yellow","italic":false,"text":"Limite trappole: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Innesco: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}]],\
        },\
        {\
            abilityDisplay:"Esplosione slime",\
            abilityName:"slime_explosion",\
            abilityType:"offensive",\
            abilityEffect:"damage",\
            abilityID:3,\
            abilityRange:3f,\
            abilityPower:90,\
            abilityCost:75,\
            abilityItem:"minecraft:slime_ball",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Entro pochi secondi, prepara una esplosione,"},\
                {"bold":false,"color":"gray","italic":false,"text":"che infligge danno ai nemici nel raggio."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Energia: "},{"bold":true,"color":"light_purple","italic":false,"text":"75"}],\
                                [{"bold":false,"color":"red","italic":false,"text":"Danno: "},{"bold":true,"color":"light_purple","italic":false,"text":"90"}],\
                                    [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"3"}]," ",\
                                            ]\
        },\
        {\
            abilityDisplay:"Respiro congelante",\
            abilityName:"freeze_breath",\
            abilityType:"offensive",\
            abilityEffect:"damage",\
            abilityID:4,\
            abilityRange:0.0f,\
            abilityDistance:6f,\
            abilityPower:125,\
            abilityPowerDown:90,\
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
                                            [{"bold":false,"color":"gold","italic":false,"text":"LEGACY"}],\
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
            abilityDisplay:"Richiamo del Nautilus",\
            abilityName:"nautilus_call",\
            abilityType:"utility",\
            abilityID:1,\
            abilityCooldown:32,\
            abilityDuration:3,\
            abilityRange:8f,\
            abilityItem:"minecraft:nautilus_shell",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Attrai i nemici e i potenziamenti nel"},\
                {"bold":false,"color":"gray","italic":false,"text":"raggio sulla tua posizione, immobilizza i nemici."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"32s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Immobilizzazione: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"8"}]],\
        },\
        {\
            abilityDisplay:"Pugno del Golem",\
            abilityName:"golem_punch",\
            abilityType:"utility",\
            abilityID:2,\
            abilityCooldown:25,\
            abilityDuration:3,\
            abilityKnockback: 4.0,\
            abilityAttackBuff:10,\
            abilityItem:"minecraft:iron_golem_spawn_egg",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Per una breve durata, il tuo prossimo"},\
                {"bold":false,"color":"gray","italic":false,"text":"attacco sul bersaglio è potenziato."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"25s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"3s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Attacco potenziato: "}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +10 attacco, "}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > 4x contraccolpo, "}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > -30% velocità di movimento per 5s."}]]\
        },\
        {\
            abilityDisplay:"Onda sismica",\
            abilityName:"seismic_wave",\
            abilityType:"utility",\
            abilityID:3,\
            abilityCooldown: 15,\
            abilityDuration: 3,\
            abilityKnockback: 4.0,\
            abilityAttackBuff: 40,\
            abilityItem:"minecraft:dripstone_block",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Scatena un'onda sismica di fronte a te."},\
                {"bold":false,"color":"gray","italic":false,"text":"I nemici coinvolti verranno storditi"},\
                {"bold":false,"color":"gray","italic":false,"text":"per una breve durata."},\
                {"bold":false,"color":"gray","italic":false,"text":"Distrugge gli edifici istantaneamente."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"32s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata stordimento: "},{"bold":true,"color":"light_purple","italic":false,"text":"2s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Gittata: "},{"bold":true,"color":"light_purple","italic":false,"text":"8 blocchi"}]]\
        },\
    ],\
    support: [\
        {\
            abilityDisplay:"Scudo osseo",\
            abilityName:"bone_shield",\
            abilityType:"support",\
            abilityID:0,\
            abilityCount:5,\
            abilityPower:25,\
            abilityDuration:12,\
            abilityCooldown:24,\
            abilityItem:"minecraft:bone",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Dei teschi ti circondano per una breve durata."},\
                {"bold":false,"color":"gray","italic":false,"text":"Bloccano le prossime istanze di danno."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Ogni teschio consumato ti cura."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"24s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Teschi: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Cura per teschio: "},{"bold":true,"color":"light_purple","italic":false,"text":"25"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"12s"}]],\
        },\
        {\
            abilityDisplay:"Albero vitale",\
            abilityName:"life_tree",\
            abilityType:"support",\
            abilityID:1,\
            abilityEffect:"heal",\
            abilityRange:5f,\
            abilityPower:20,\
            abilityCooldown:40,\
            abilityItem:"minecraft:oak_sapling",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Pianta un germoglio in posizione."},\
                {"bold":false,"color":"gray","italic":false,"text":"Cresce nel tempo, curando nel raggio."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Alla fine della crescita, dà una cura finale."},\
                    {"bold":false,"color":"gray","italic":false,"text":"Può essere distrutto dai nemici."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"40s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"6"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata crescita: "},{"bold":true,"color":"light_purple","italic":false,"text":"12s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Cura al secondo: "},{"bold":true,"color":"light_purple","italic":false,"text":"20"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Cura finale: "},{"bold":true,"color":"light_purple","italic":false,"text":"400"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Salute: "},{"bold":true,"color":"light_purple","italic":false,"text":"300"}]],\
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
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +20% difesa corpo a corpo,"}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +10 cure per attacco base;"}],\
                                [{"bold":false,"color":"gold","italic":false,"text":"    > +1 Esperienza per colpo."}]]\
        },\
        {\
            abilityDisplay:"Benedizione di miele",\
            abilityName:"honey_blessing",\
            abilityType:"support",\
            abilityID:3,\
            abilityEffect:"heal",\
            abilityPower:300,\
            abilityCooldown:18,\
            abilityRange:5,\
            abilityItem:"minecraft:honey_bottle",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Cura gli alleati nel raggio"},\
                {"bold":false,"color":"gray","italic":false,"text":"e ti liberi dei debuff."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"18s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Cura: "},{"bold":true,"color":"light_purple","italic":false,"text":"300"}]],\
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
            abilityItem:"minecraft:red_mushroom_block",\
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
            abilityDisplay:"Singolarità",\
            abilityName:"singularity",\
            abilityType:"ultimate",\
            abilityID:1,\
            abilityPower:50,\
            damage_boom:300,\
            abilityCooldown:65,\
            abilityDuration:12,\
            abilityHealth:8,\
            abilityItem:"minecraft:end_crystal",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Crea un buco nero che impedisce"},\
                    {"bold":false,"color":"gray","italic":false,"text":"l'uso di abilità e il movimento dei nemici"},\
                        {"bold":false,"color":"gray","italic":false,"text":"nel raggio per una breve durata."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"65s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"5"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"5s"}]],\
        }\
        ,\
        {\
            abilityDisplay:"Tornado",\
            abilityName:"tornado",\
            abilityType:"ultimate",\
            abilityID:2,\
            abilityItem:"minecraft:wind_charge",\
            abilityLore: [{"bold":false,"color":"gray","italic":false,"text":"Evoca un tornado che intrappola"},\
                    {"bold":false,"color":"gray","italic":false,"text":"i nemici nella zona e nega la rigenerazione"},\
                        {"bold":false,"color":"gray","italic":false,"text":"di energia nel raggio."}," ",\
                            [{"bold":false,"color":"green","italic":false,"text":"Ricarica: "},{"bold":true,"color":"light_purple","italic":false,"text":"65s"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Raggio: "},{"bold":true,"color":"light_purple","italic":false,"text":"8"}],\
                            [{"bold":false,"color":"yellow","italic":false,"text":"Durata: "},{"bold":true,"color":"light_purple","italic":false,"text":"9s"}]],\
        }\
    ]\
}