execute if score timer value = drop1 value run function battleroyale_supplydrop:drop
execute if score timer value = drop2 value run function battleroyale_supplydrop:drop
execute if score timer value = drop3 value run function battleroyale_supplydrop:drop
execute if score timer value = drop4 value run function battleroyale_supplydrop:drop


execute at @e[type=armor_stand,tag=drop] run execute if block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run tp @e[limit=1,sort=nearest,tag=drop] ~ ~-0.35 ~
execute at @e[type=armor_stand,tag=drop] run execute if block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run setblock ~ ~2 ~ air
execute at @e[type=armor_stand,tag=drop] run execute if block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run setblock ~ ~1 ~ light_blue_carpet
execute at @e[type=armor_stand,tag=drop] run execute if block ~ ~-1 ~ #battleroyale_supplydrop:fall_through unless block ~ ~ ~ red_concrete run setblock ~ ~ ~ red_concrete destroy
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run setblock ~ ~ ~ minecraft:red_shulker_box{LootTable:"battleroyale_supplydrop:chests/drop"}
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run setblock ~ ~1 ~ light_blue_carpet
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run setblock ~ ~2 ~ air
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Colors:[I;15790320]}],Flight:1}}}}
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run summon armor_stand ~ ~12 ~ {Invisible:1,Marker:1,NoGravity:1,Tags:[smoke]}
execute at @e[type=armor_stand,tag=drop] run execute unless block ~ ~-1 ~ #battleroyale_supplydrop:fall_through run kill @e[type=armor_stand,limit=1,sort=nearest]

scoreboard players add @e[type=armor_stand,tag=drop] value 1
execute at @e[type=armor_stand,tag=drop,scores={value=20}] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Colors:[I;14602026,15790320]}]}}}}
execute as @e[type=armor_stand,tag=drop,scores={value=20}] run scoreboard players set @s value 0

scoreboard players add @e[type=armor_stand,tag=smoke] life 1
execute at @e[type=armor_stand,tag=smoke] as @e[type=armor_stand,tag=smoke] if score @s life < 1200 value run particle minecraft:dust 0.7 0 0 20 ~ ~ ~ 0 4 0 20 3
execute at @e[type=armor_stand,tag=smoke,scores={life=1200}] run kill @e[type=armor_stand,tag=smoke,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=smoke] as @e[type=armor_stand,tag=smoke] if score @s life > 10 value if block ~ ~-12 ~ air run kill @s