#####################################################################
## Chiamata da skills:list/support/vampiric_chain/arc_start        ##
## Posizione: piedi utente +0.2 (punti a +1), verso il bersaglio    ##
## Macro: i data del marker (ID, range)                            ##
## Arco cremisi sul bordo del raggio, centrato sul bersaglio:      ##
## 60°, un punto ogni 5°, spesso al centro e sottile alle punte.   ##
## Visibile SOLO all'utente.                                       ##
#####################################################################

$execute rotated ~-30 0 run particle dust{color:[0.45,0.0,0.06],scale:0.85} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~-25 0 run particle dust{color:[0.45,0.0,0.06],scale:0.98} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~-20 0 run particle dust{color:[0.45,0.0,0.06],scale:1.12} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~-15 0 run particle dust{color:[0.45,0.0,0.06],scale:1.25} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~-10 0 run particle dust{color:[0.45,0.0,0.06],scale:1.38} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~-5 0 run particle dust{color:[0.45,0.0,0.06],scale:1.52} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~ 0 run particle dust{color:[0.45,0.0,0.06],scale:1.65} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~5 0 run particle dust{color:[0.45,0.0,0.06],scale:1.52} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~10 0 run particle dust{color:[0.45,0.0,0.06],scale:1.38} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~15 0 run particle dust{color:[0.45,0.0,0.06],scale:1.25} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~20 0 run particle dust{color:[0.45,0.0,0.06],scale:1.12} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~25 0 run particle dust{color:[0.45,0.0,0.06],scale:0.98} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
$execute rotated ~30 0 run particle dust{color:[0.45,0.0,0.06],scale:0.85} ^ ^1 ^$(range) 0 0 0 0 1 force @a[tag=vampiric_chain_user.$(ID)]
