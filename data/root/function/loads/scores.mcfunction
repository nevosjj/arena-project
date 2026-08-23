# Scoreboards.
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Scoreboard","color":"#f5ace5","bold":true},\
    {"text":"]","color":"dark_gray","bold":false},{"text":" Scoreboards..","color":"gray"}]

# Temporanee
scoreboard objectives add temp dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy
scoreboard objectives add temp4 dummy
scoreboard objectives add temp5 dummy
scoreboard objectives add temp6 dummy
scoreboard objectives add temp7 dummy
scoreboard objectives add temp8 dummy
scoreboard objectives add temp9 dummy
scoreboard objectives add temp10 dummy

# Giocatore
scoreboard objectives add ID dummy
scoreboard objectives add teamID dummy

# Display di lato
scoreboard objectives add game_display dummy [{"text":"Arena Project","color":"#eee094"}]

# Selezione abilità
scoreboard objectives add selection.skill.type dummy
scoreboard objectives add selection.skill.id dummy

# Statistiche giocatore
scoreboard objectives add stat.defense dummy
scoreboard objectives add stat.attack dummy
scoreboard objectives add stat.max_health dummy
scoreboard objectives add stat.current_health dummy
scoreboard objectives add stat.combo dummy
scoreboard objectives add stat.hunger food

# Operazioni vita
scoreboard objectives add incoming_heal dummy
scoreboard objectives add heal_available dummy
scoreboard objectives add incoming_damage dummy
scoreboard objectives add melee_damage dummy
scoreboard objectives add ability_damage dummy
scoreboard objectives add recent_damage dummy
scoreboard objectives add recent_damage.timer dummy

# Operazioni esperienza
scoreboard objectives add experience_gain dummy
scoreboard objectives add experience_limit dummy
scoreboard objectives add experience_timer dummy
scoreboard objectives add experience_level dummy
scoreboard objectives add experience_cost dummy

# Contatori abilità
scoreboard objectives add counter.offensive dummy
scoreboard objectives add counter.offensive2 dummy
scoreboard objectives add counter.offensive3 dummy
scoreboard objectives add counter.offensive4 dummy
scoreboard objectives add counter.support dummy
scoreboard objectives add counter.utility dummy
scoreboard objectives add counter.utility2 dummy

# Durata abilità
scoreboard objectives add duration.support dummy
scoreboard objectives add duration.offensive dummy
scoreboard objectives add duration.offensive2 dummy
scoreboard objectives add duration.utility dummy

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
scoreboard objectives add iteration dummy
scoreboard objectives add t dummy
scoreboard objectives add max_t dummy
scoreboard objectives add void dummy

# Info partita
scoreboard objectives add rounds dummy
scoreboard objectives add best_rounds dummy
scoreboard objectives add player.amount dummy
scoreboard objectives add match.duration dummy
scoreboard objectives add match.seconds dummy
scoreboard objectives add match.minutes dummy
scoreboard objectives add player.hearts dummy

# Statistiche post-partita
scoreboard objectives add poststat.heal_received dummy
scoreboard objectives add poststat.melee_inflicted dummy
scoreboard objectives add poststat.damage_received dummy
scoreboard objectives add poststat.damage_halved dummy
scoreboard objectives add poststat.best_combo dummy

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

# Animazione
scoreboard objectives add animation dummy

# Impostazioni
scoreboard objectives modify stat.current_health numberformat styled {"color":"#57f727","bold":false}
scoreboard objectives modify stat.current_health displayname {"text":"♥","color":"red","bold":false}