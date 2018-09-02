execute as @a[nbt={OnGround:1b}] run effect clear @s minecraft:slow_falling

execute as @e[type=minecraft:creeper,tag=rift,nbt={powered:1b}] at @s if entity @a[distance=..0.7,gamemode=!spectator] run scoreboard players set @s riftUsed 1
execute at @e[type=minecraft:creeper,tag=rift,nbt={powered:1b}] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:slow_falling 10000
execute at @e[type=minecraft:creeper,tag=rift,nbt={powered:1b}] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] usedRift 1
execute at @e[type=minecraft:creeper,tag=rift,nbt={powered:1b}] run tp @a[distance=..0.7,gamemode=!spectator] ~ 255 ~

data merge entity @e[type=minecraft:creeper,tag=rift,nbt={powered:1b},scores={life=200},limit=1] {powered:0b}
execute at @e[type=minecraft:creeper,tag=rift,scores={life=200}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.5
execute as @e[type=minecraft:creeper,tag=rift,scores={life=200}] run kill @s

execute as @e[type=minecraft:creeper,tag=rift] if score @s riftUsed = TRUE value run scoreboard players add @s life 1

execute if entity @e[type=minecraft:creeper,tag=rift] at @e[type=minecraft:creeper,tag=rift] at @a[distance=0.8..,gamemode=!spectator,nbt={OnGround:1b},scores={usedRift=0}] unless block ~ ~ ~ minecraft:black_carpet run effect clear @p minecraft:slow_falling
execute unless entity @e[type=minecraft:creeper,tag=rift] at @a[distance=0.8..,gamemode=!spectator,nbt={OnGround:1b},scores={usedRift=0}] unless block ~ ~ ~ minecraft:black_carpet run effect clear @p minecraft:slow_falling

execute at @a[scores={usedRift=1}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 16 2
execute as @a[scores={usedRift=1}] run scoreboard players set @s usedRift 0