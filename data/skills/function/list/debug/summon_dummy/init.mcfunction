###########################################################################
## DEBUG TEMPORANEO (Fase 3): da cancellare dopo i test                  ##
## Chiamata a mano, in partita:                                          ##
##   function skills:list/debug/summon_dummy/init {teamID:99, health:50} ##
## teamID 99 = nemico di tutti                                           ##
###########################################################################

$summon marker ~ ~ ~ {Tags:["summon_dummy.brain","summon_dummy.new"],data:{abilityName:"summon_dummy",abilityType:"debug",name:"Bersaglio di prova",playerName:"debug",ID:0,teamID:$(teamID)}}
$execute as @e[type=marker,tag=summon_dummy.new,limit=1,sort=nearest] at @s run function skills:list/debug/summon_dummy/setup {health:$(health)}
