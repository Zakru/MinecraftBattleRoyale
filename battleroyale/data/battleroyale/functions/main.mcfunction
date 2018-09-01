execute as @e[tag=centermarker] at @s run tp @s ~ ~ ~
execute as @e[tag=playareamarker] at @s run tp @s ~ ~ ~


# Ticks and base logic

execute if score prepare_waiting value > NONE value if score prepare value = TRUE value run function #battleroyale:dlc_prepare_tick
execute if score prepare_waiting value = NONE value if score prepare value = TRUE value run function battleroyale:begin

execute if score pause value = FALSE value run function #battleroyale:unpause_tick
execute if score pause value = TRUE value run function #battleroyale:pause_tick

execute if score timer value = BEGIN value run tellraw @a {"text":"Let the games begin!"}


# Do the circles

execute if score timer value = WARNING_CIRCLE0 value run tellraw @a {"text":"Safezone shrinking to ±255 in 1 minute!","color":"aqua"}
execute if score timer value = CIRCLE0 value run function battleroyale:createcenter

execute if score timer value = WARNING_CIRCLE1 value run tellraw @a {"text":"Safezone shrinking to ±127 in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE1 value run function battleroyale:circle1

execute if score timer value = WARNING_CIRCLE2 value run tellraw @a {"text":"Safezone shrinking to ±63 in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE2 value run function battleroyale:circle2

execute if score timer value = WARNING_CIRCLE3 value run tellraw @a {"text":"Safezone shrinking to ±31 in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE3 value run function battleroyale:circle3

execute if score timer value = WARNING_CIRCLE4 value run tellraw @a {"text":"Safezone shrinking to ±15 in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE4 value run function battleroyale:circle4

execute if score timer value = WARNING_CIRCLE5 value run tellraw @a {"text":"Safezone shrinking to ±7 in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE5 value run function battleroyale:circle5

execute if score timer value = WARNING_CIRCLE6 value run tellraw @a {"text":"Safezone shrinking to one block in 10 seconds!","color":"aqua"}
execute if score timer value = CIRCLE6 value run function battleroyale:circle6

execute if score timer value = WARNING_SUDDEN_DEATH value run tellraw @a {"text":"Sudden death in 10 seconds!","color":"aqua"}
execute if score timer value = SUDDEN_DEATH value run worldborder center 10000000 10000000


# Do the boss bars

# Start
execute if score timer value >= BEGIN value unless score timer value >= CIRCLE0 value store result bossbar start value run scoreboard players operation bar_start value += INCREMENT value
execute if score timer value = BEGIN value run bossbar set start visible true
execute if score timer value = BEGIN value run bossbar set start players @a
execute if score timer value = CIRCLE0 value run bossbar set start visible false

# C0
execute if score timer value >= CIRCLE0 value unless score timer value >= CIRCLE0_END value store result bossbar c0 value run scoreboard players operation bar_c0 value += INCREMENT value
execute if score timer value = CIRCLE0 value run bossbar set c0 visible true
execute if score timer value = CIRCLE0 value run bossbar set c0 players @a
execute if score timer value = CIRCLE0_END value run bossbar set c0 visible false

# D1
execute if score timer value >= CIRCLE0_END value unless score timer value >= CIRCLE1 value store result bossbar d1 value run scoreboard players operation bar_d1 value -= INCREMENT value
execute if score timer value = CIRCLE0_END value run bossbar set d1 visible true
execute if score timer value = CIRCLE0_END value run bossbar set d1 players @a
execute if score timer value = CIRCLE1 value run bossbar set d1 visible false

# C1
execute if score timer value >= CIRCLE1 value unless score timer value >= CIRCLE1_END value store result bossbar c1 value run scoreboard players operation bar_c1 value += INCREMENT value
execute if score timer value = CIRCLE1 value run bossbar set c1 visible true
execute if score timer value = CIRCLE1 value run bossbar set c1 players @a
execute if score timer value = CIRCLE1_END value run bossbar set c1 visible false

# D2
execute if score timer value >= CIRCLE1_END value unless score timer value >= CIRCLE2 value store result bossbar d2 value run scoreboard players operation bar_d2 value -= INCREMENT value
execute if score timer value = CIRCLE1_END value run bossbar set d2 visible true
execute if score timer value = CIRCLE1_END value run bossbar set d2 players @a
execute if score timer value = CIRCLE2 value run bossbar set d2 visible false

# C2
execute if score timer value >= CIRCLE2 value unless score timer value >= CIRCLE2_END value store result bossbar c2 value run scoreboard players operation bar_c2 value += INCREMENT value
execute if score timer value = CIRCLE2 value run bossbar set c2 visible true
execute if score timer value = CIRCLE2 value run bossbar set c2 players @a
execute if score timer value = CIRCLE2_END value run bossbar set c2 visible false

# D3
execute if score timer value >= CIRCLE2_END value unless score timer value >= CIRCLE3 value store result bossbar d3 value run scoreboard players operation bar_d3 value -= INCREMENT value
execute if score timer value = CIRCLE2_END value run bossbar set d3 visible true
execute if score timer value = CIRCLE2_END value run bossbar set d3 players @a
execute if score timer value = CIRCLE3 value run bossbar set d3 visible false

# C3
execute if score timer value >= CIRCLE3 value unless score timer value >= CIRCLE3_END value store result bossbar c3 value run scoreboard players operation bar_c3 value += INCREMENT value
execute if score timer value = CIRCLE3 value run bossbar set c3 visible true
execute if score timer value = CIRCLE3 value run bossbar set c3 players @a
execute if score timer value = CIRCLE3_END value run bossbar set c3 visible false

# D4
execute if score timer value >= CIRCLE3_END value unless score timer value >= CIRCLE4 value store result bossbar d4 value run scoreboard players operation bar_d4 value -= INCREMENT value
execute if score timer value = CIRCLE3_END value run bossbar set d4 visible true
execute if score timer value = CIRCLE3_END value run bossbar set d4 players @a
execute if score timer value = CIRCLE4 value run bossbar set d4 visible false

# C4
execute if score timer value >= CIRCLE4 value unless score timer value >= CIRCLE4_END value store result bossbar c4 value run scoreboard players operation bar_c4 value += INCREMENT value
execute if score timer value = CIRCLE4 value run bossbar set c4 visible true
execute if score timer value = CIRCLE4 value run bossbar set c4 players @a
execute if score timer value = CIRCLE4_END value run bossbar set c4 visible false

# D5
execute if score timer value >= CIRCLE4_END value unless score timer value >= CIRCLE5 value store result bossbar d5 value run scoreboard players operation bar_d5 value -= INCREMENT value
execute if score timer value = CIRCLE4_END value run bossbar set d5 visible true
execute if score timer value = CIRCLE4_END value run bossbar set d5 players @a
execute if score timer value = CIRCLE5 value run bossbar set d5 visible false

# C5
execute if score timer value >= CIRCLE5 value unless score timer value >= CIRCLE5_END value store result bossbar c5 value run scoreboard players operation bar_c5 value += INCREMENT value
execute if score timer value = CIRCLE5 value run bossbar set c5 visible true
execute if score timer value = CIRCLE5 value run bossbar set c5 players @a
execute if score timer value = CIRCLE5_END value run bossbar set c5 visible false

# D6
execute if score timer value >= CIRCLE5_END value unless score timer value >= CIRCLE6 value store result bossbar d6 value run scoreboard players operation bar_d6 value -= INCREMENT value
execute if score timer value = CIRCLE5_END value run bossbar set d6 visible true
execute if score timer value = CIRCLE5_END value run bossbar set d6 players @a
execute if score timer value = CIRCLE6 value run bossbar set d6 visible false

# C6
execute if score timer value >= CIRCLE6 value unless score timer value >= CIRCLE6_END value store result bossbar c6 value run scoreboard players operation bar_c6 value += INCREMENT value
execute if score timer value = CIRCLE6 value run bossbar set c6 visible true
execute if score timer value = CIRCLE6 value run bossbar set c6 players @a
execute if score timer value = CIRCLE6_END value run bossbar set c6 visible false

# Rift: /summon minecraft:armor_stand ~ ~ ~ {HandItems:[{id:"minecraft:nether_star",Count:1}],ShowArms:1b, Pose:{RightArm:[-90.0f,-90.0f,0.0f]}, Invisible: 1}
