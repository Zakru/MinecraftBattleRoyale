execute at @e[tag=playareamarker] run worldborder center ~ ~
worldborder set 511
scoreboard players set prepare value 0
scoreboard players set pause value 0
time set 23300
gamerule doMobLoot true
gamerule doMobSpawning true
effect give @a minecraft:saturation 1 127
effect give @a minecraft:instant_health 1 127
advancement revoke @a everything
execute at @e[tag=playareamarker] run spreadplayers ~ ~ 128 255 false @a[gamemode=adventure]
gamemode survival @a[gamemode=adventure]
