execute at @e[type=minecraft:armor_stand,tag=LaunchPadSpawner] run setblock ~ ~ ~ minecraft:slime_block
execute at @e[type=minecraft:armor_stand,tag=LaunchPadSpawner] run setblock ~ ~1 ~ minecraft:black_carpet
execute at @e[type=minecraft:armor_stand,tag=LaunchPadSpawner] run summon minecraft:armor_stand ~ ~1 ~ {Tags:[LaunchPad],Invisible:1,NoGravity:1,Marker:1}
execute at @e[type=minecraft:armor_stand,tag=LaunchPadSpawner] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]

execute at @e[type=minecraft:armor_stand,tag=LaunchPad] as @a[distance=..0.5,gamemode=!spectator] run playsound minecraft:entity.slime.jump block @a ~ ~ ~ 1 0.7
execute at @e[type=minecraft:armor_stand,tag=LaunchPad] run effect give @a[distance=..0.5,gamemode=!spectator] minecraft:slow_falling 10000
execute at @e[type=minecraft:armor_stand,tag=LaunchPad] run effect give @a[distance=..0.5,gamemode=!spectator] minecraft:levitation 1 75
execute as @e[type=minecraft:armor_stand,tag=LaunchPad] at @s unless block ~ ~ ~ minecraft:black_carpet run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest]