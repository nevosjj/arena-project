## Feedback visivo

# Feedback testo
$tellraw @s [\
    {"atlas":"minecraft:gui","sprite":"icon/checkmark"},\
    {"text":" >","color":"dark_gray"},\
    {"text":" Abilità ","color":"gray"},\
    {"text":"$(itemName)","color":"$(itemNameColor)"},\
    {"text":" pronta.","color":"gray"}]