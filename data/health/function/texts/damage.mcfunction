########################################
## Chiamata da math:incoming_damage   ##
## La funzione crea il testo di danno ##
########################################

# Danno abilità
$execute if score @s ability_damage matches 1.. run summon text_display ~ ~1 ~ {interpolation_duration:10,Tags:["text.damage","feedback_text","new_text"],billboard:"center",teleport_duration:15,text_opacity:220,shadow:0b,see_through:1b,alignment:"center",text:{"bold":true,"color":"#F9A3FF","italic":false,"text":"$(text)"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Danno melee
$execute if score @s melee_damage matches 1.. run summon text_display ~ ~1 ~ {interpolation_duration:10,Tags:["text.damage","feedback_text","new_text"],billboard:"center",teleport_duration:15,text_opacity:220,shadow:0b,see_through:1b,alignment:"center",text:{"bold":true,"color":"#FFC78F","italic":false,"text":"$(text)"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}}

# Chiamata dello spread
execute as @e[type=text_display,tag=new_text,distance=..4,sort=nearest] at @s positioned ~ ~1 ~ run function health:texts/spread