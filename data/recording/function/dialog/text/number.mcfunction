##########################################################
## Chiamata da recording:dialog/pages/*                 ##
## Macro: un compound con n                             ##
## Scrive n come testo in recording:view str            ##
##########################################################

$data modify storage recording:view str set value "$(n)"
