##########################
# Chiamata da: recording:declare_name
##########################

# Unisci dal datapath "temp" tutto.
$data modify storage match_recorder:data actual_match.match_id set value "$(adjective)$(name)$(flavour)#$(matchID)"

# Pulizia temp
data remove storage match_recorder:randomizer temp