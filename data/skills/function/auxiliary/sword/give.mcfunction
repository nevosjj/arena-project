########################################################################
## Chiamata da match:events/end_selection e flame_sword (setup/reset) ##
## Esecutore: il giocatore | Macro: reach (portata attacco, blocchi)  ##
## La portata degli attacchi è data da attack_range sull'oggetto:     ##
## entity_interaction_range del giocatore è 0 (niente interazioni     ##
## con le interaction, che bloccavano la guardia della spada).        ##
########################################################################

$item replace entity @s hotbar.0 with blaze_rod[item_model="minecraft:iron_sword",minecraft:blocks_attacks={},minecraft:attack_range={max_reach:$(reach)f},attribute_modifiers=[{id:"offensive_sword",type:"attack_damage",amount:0,operation:"add_value"}],minecraft:custom_data={skill:{offensive:1b}},custom_name=[{"text":"Spada offensiva","color":"#d36464","bold":true,"italic":false}]] 1
