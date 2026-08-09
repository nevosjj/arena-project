# Scoreboards.
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Scoreboard","color":"#f5ace5","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Scoreboards..","color":"gray"}]

# Temporanee
scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy

# Giocatore
scoreboard objectives add ID dummy
scoreboard objectives add teamID dummy

# Selezione abilità
scoreboard objectives add selection.skill.type dummy
scoreboard objectives add selection.skill.id dummy

# Statistiche giocatore
scoreboard objectives add stat.defense dummy
scoreboard objectives add stat.attack dummy
scoreboard objectives add stat.max_health dummy
scoreboard objectives add stat.current_health dummy

# Operazioni vita
scoreboard objectives add incoming_heal dummy
scoreboard objectives add heal_available dummy
scoreboard objectives add incoming_damage dummy
scoreboard objectives add melee_damage dummy
scoreboard objectives add ability_damage dummy

# Operazioni esperienza
scoreboard objectives add experience_gain dummy
scoreboard objectives add experience_limit dummy
scoreboard objectives add experience_timer dummy
scoreboard objectives add experience_level dummy
scoreboard objectives add experience_cost dummy

# Contatori abilità
scoreboard objectives add counter.support dummy

# Durata abilità
scoreboard objectives add duration.support dummy

# Cooldown abilità (Quanto ci mette a ricaricarsi in secondi, per settare i timer delle cooldown)
scoreboard objectives add cooldown.offensive dummy
scoreboard objectives add cooldown.utility dummy
scoreboard objectives add cooldown.support dummy
scoreboard objectives add cooldown.ultimate dummy

# Timer abilità delle cooldown (punteggio che effettivamente scorre in basso per la ricarica, dopo essere stata impostata)
scoreboard objectives add cooldown.utility_timer dummy
scoreboard objectives add cooldown.support_timer dummy
scoreboard objectives add cooldown.ultimate_timer dummy

# Antispam abilità
scoreboard objectives add antispam.offensive dummy
scoreboard objectives add antispam.utility dummy
scoreboard objectives add antispam.support dummy
scoreboard objectives add antispam.ultimate dummy

# Utilità
scoreboard objectives add bool dummy
scoreboard objectives add roll dummy
scoreboard objectives add counter dummy
scoreboard objectives add death dummy
scoreboard objectives add multiplier dummy
scoreboard objectives add sound dummy
scoreboard objectives add range dummy

# Info partita
scoreboard objectives add rounds dummy
scoreboard objectives add best_rounds dummy
scoreboard objectives add player.amount dummy
scoreboard objectives add match.duration dummy
scoreboard objectives add match.seconds dummy
scoreboard objectives add match.minutes dummy

# Statistiche post-partita
scoreboard objectives add poststat.heal_received dummy
scoreboard objectives add poststat.melee_inflicted dummy
scoreboard objectives add poststat.damage_received dummy
scoreboard objectives add poststat.damage_halved dummy

# Movimento proiettili
scoreboard objectives add motion.x1 dummy
scoreboard objectives add motion.x2 dummy
scoreboard objectives add motion.z1 dummy
scoreboard objectives add motion.z2 dummy
scoreboard objectives add motion.y1 dummy
scoreboard objectives add motion.y2 dummy

# Selezione abilità
scoreboard objectives add inventory.selection dummy
scoreboard objectives add inventory_prev.selection dummy
scoreboard objectives add counter.selection dummy

# Sensibili alle abilità
scoreboard objectives add freeze_breath.counter dummy
scoreboard objectives add lightning_strike.counter dummy
scoreboard objectives add magnetic_impulse.counter dummy

# Impostazioni
scoreboard objectives modify stat.current_health numberformat styled {"color":"#57f727","bold":false}
scoreboard objectives modify stat.current_health displayname {"text":"♥","color":"red","bold":false}