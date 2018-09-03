worldborder center 0 0
worldborder set 60000000
scoreboard players set timer value -1
scoreboard players set pause value 1
scoreboard players set prepare value 0
gamemode adventure @a[gamemode=spectator,scores={dead=1}]
scoreboard players set @a dead 0
time set 0
gamerule doMobLoot false
gamerule doMobSpawning false
kill @e[type=!player]

# Boss bar value holders
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

# Boss bar visibilities
bossbar set start visible false
bossbar set d0 visible false
bossbar set c0 visible false
bossbar set d1 visible false
bossbar set c1 visible false
bossbar set d2 visible false
bossbar set c2 visible false
bossbar set d3 visible false
bossbar set c3 visible false
bossbar set d4 visible false
bossbar set c4 visible false
bossbar set d5 visible false
bossbar set c5 visible false
bossbar set d6 visible false
bossbar set c6 visible false

kill @e[tag=centermarker]
kill @e[tag=playareamarker]
gamemode adventure @a[gamemode=survival]
