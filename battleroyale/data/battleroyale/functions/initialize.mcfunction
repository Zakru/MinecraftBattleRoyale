defaultgamemode adventure

worldborder damage amount 0.00000000001
worldborder damage buffer 0

worldborder warning distance 0
worldborder warning time 0

scoreboard objectives add value dummy
scoreboard objectives add dead deathCount

scoreboard players set timer value -1

scoreboard players set pause value 1


# General constants

scoreboard players set NONE value 0
scoreboard players set FALSE value 0
scoreboard players set TRUE value 1


# Timing values

scoreboard players set BEGIN value 0

scoreboard players set CENTER_DELAY value 6000

scoreboard players set WARNING_CIRCLE0 value 10800
scoreboard players set CIRCLE0 value 12000
scoreboard players set CIRCLE0_END value 15600

scoreboard players set WARNING_CIRCLE1 value 21400
scoreboard players set CIRCLE1 value 21600
scoreboard players set CIRCLE1_END value 24600

scoreboard players set WARNING_CIRCLE2 value 28000
scoreboard players set CIRCLE2 value 28200
scoreboard players set CIRCLE2_END value 30300

scoreboard players set WARNING_CIRCLE3 value 32500
scoreboard players set CIRCLE3 value 32700
scoreboard players set CIRCLE3_END value 34500

scoreboard players set WARNING_CIRCLE4 value 36400
scoreboard players set CIRCLE4 value 36600
scoreboard players set CIRCLE4_END value 37800

scoreboard players set WARNING_CIRCLE5 value 39400
scoreboard players set CIRCLE5 value 39600
scoreboard players set CIRCLE5_END value 40500

scoreboard players set WARNING_CIRCLE6 value 41800
scoreboard players set CIRCLE6 value 42000
scoreboard players set CIRCLE6_END value 42600

scoreboard players set WARNING_SUDDEN_DEATH value 43600
scoreboard players set SUDDEN_DEATH value 43800


# Boss bars

# Creation
bossbar add start ""
bossbar add d0 ""
bossbar add c0 ""
bossbar add d1 ""
bossbar add c1 ""
bossbar add d2 ""
bossbar add c2 ""
bossbar add d3 ""
bossbar add c3 ""
bossbar add d4 ""
bossbar add c4 ""
bossbar add d5 ""
bossbar add c5 ""
bossbar add d6 ""
bossbar add c6 ""

# Colors
bossbar set start color green
bossbar set c0 color blue
bossbar set c1 color blue
bossbar set c2 color blue
bossbar set c3 color blue
bossbar set c4 color blue
bossbar set c5 color blue
bossbar set c6 color blue

# Max values
bossbar set start max 12000
bossbar set d0 max 6000
bossbar set c0 max 3600
bossbar set d1 max 6000
bossbar set c1 max 3000
bossbar set d2 max 3600
bossbar set c2 max 2100
bossbar set d3 max 2400
bossbar set c3 max 1800
bossbar set d4 max 2100
bossbar set c4 max 1200
bossbar set d5 max 1800
bossbar set c5 max 900
bossbar set d6 max 1500
bossbar set c6 max 600

# Value holders
scoreboard players set INCREMENT value 1
scoreboard players set bar_start value 0
scoreboard players set bar_d0 value 6000
scoreboard players set bar_c0 value 0
scoreboard players set bar_d1 value 6000
scoreboard players set bar_c1 value 0
scoreboard players set bar_d2 value 3600
scoreboard players set bar_c2 value 0
scoreboard players set bar_d3 value 2400
scoreboard players set bar_c3 value 0
scoreboard players set bar_d4 value 2100
scoreboard players set bar_c4 value 0
scoreboard players set bar_d5 value 1800
scoreboard players set bar_c5 value 0
scoreboard players set bar_d6 value 1500
scoreboard players set bar_c6 value 0

function battleroyale:reset
