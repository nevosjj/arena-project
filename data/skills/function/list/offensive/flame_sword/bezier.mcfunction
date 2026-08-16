# ============================================================
# CURVA - BEZIER QUADRATICA (CALCOLO PUNTO)
# ============================================================

# Formula:
# B(t) = (1-t)^2 * P0 + 2t(1-t) * P1 + t^2 * P2
# TUTTE le coordinate sono in centesimi di blocco ed il parametro t è intero 0..100.
# Il coefficiente finale divide per 10000 ed è coerente con la scala del mondo.

scoreboard players set #flame_sword temp3 100

# temp4 = 100 - t
scoreboard players operation #flame_sword temp4 = #flame_sword temp3
scoreboard players operation #flame_sword temp4 -= #flame_sword t

# coeff0 = (100 - t)^2
scoreboard players operation #flame_sword temp5 = #flame_sword temp4
scoreboard players operation #flame_sword temp5 *= #flame_sword temp4

# coeff1 = 2 * t * (100 - t)
scoreboard players set #flame_sword temp6 2
scoreboard players operation #flame_sword temp6 *= #flame_sword t
scoreboard players operation #flame_sword temp6 *= #flame_sword temp4

# coeff2 = t^2
scoreboard players operation #flame_sword temp7 = #flame_sword t
scoreboard players operation #flame_sword temp7 *= #flame_sword t

# X = (coeff0*P0.x + coeff1*P1.x + coeff2*P2.x) / 10000
execute store result score #flame_sword temp8 run data get storage arenaproject:ability_data temp.p0.x
scoreboard players operation #flame_sword temp8 *= #flame_sword temp5

execute store result score #flame_sword temp9 run data get storage arenaproject:ability_data temp.p1.x
scoreboard players operation #flame_sword temp9 *= #flame_sword temp6

execute store result score #flame_sword temp10 run data get storage arenaproject:ability_data temp.p2.x
scoreboard players operation #flame_sword temp10 *= #flame_sword temp7

scoreboard players operation #flame_sword temp8 += #flame_sword temp9
scoreboard players operation #flame_sword temp8 += #flame_sword temp10
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
execute store result storage arenaproject:ability_data temp.resultPos.x float 0.01 run scoreboard players get #flame_sword temp8

# Y = (coeff0*P0.y + coeff1*P1.y + coeff2*P2.y) / 10000
execute store result score #flame_sword temp8 run data get storage arenaproject:ability_data temp.p0.y
scoreboard players operation #flame_sword temp8 *= #flame_sword temp5

execute store result score #flame_sword temp9 run data get storage arenaproject:ability_data temp.p1.y
scoreboard players operation #flame_sword temp9 *= #flame_sword temp6

execute store result score #flame_sword temp10 run data get storage arenaproject:ability_data temp.p2.y
scoreboard players operation #flame_sword temp10 *= #flame_sword temp7

scoreboard players operation #flame_sword temp8 += #flame_sword temp9
scoreboard players operation #flame_sword temp8 += #flame_sword temp10
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
execute store result storage arenaproject:ability_data temp.resultPos.y float 0.01 run scoreboard players get #flame_sword temp8

# Z = (coeff0*P0.z + coeff1*P1.z + coeff2*P2.z) / 10000
execute store result score #flame_sword temp8 run data get storage arenaproject:ability_data temp.p0.z
scoreboard players operation #flame_sword temp8 *= #flame_sword temp5

execute store result score #flame_sword temp9 run data get storage arenaproject:ability_data temp.p1.z
scoreboard players operation #flame_sword temp9 *= #flame_sword temp6

execute store result score #flame_sword temp10 run data get storage arenaproject:ability_data temp.p2.z
scoreboard players operation #flame_sword temp10 *= #flame_sword temp7

scoreboard players operation #flame_sword temp8 += #flame_sword temp9
scoreboard players operation #flame_sword temp8 += #flame_sword temp10
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
scoreboard players operation #flame_sword temp8 /= #flame_sword temp3
execute store result storage arenaproject:ability_data temp.resultPos.z float 0.01 run scoreboard players get #flame_sword temp8