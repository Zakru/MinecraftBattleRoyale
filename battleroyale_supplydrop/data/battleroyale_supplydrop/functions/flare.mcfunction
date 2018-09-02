execute as @e[type=minecraft:arrow,nbt={Color:16750080,pickup:1b}] run data merge entity @s {pickup:0b}
execute as @e[type=minecraft:arrow,nbt={Color:16750080,pickup:2b}] run data merge entity @s {pickup:0b}

execute as @e[type=minecraft:arrow,nbt={Color:16750080,pickup:0b,inGround:0b}] at @s unless block ~ ~ ~ water run scoreboard players add @s life 1

execute at @e[type=minecraft:arrow,nbt={Color:16750080},scores={life=1}] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 4 0.5
execute at @e[type=minecraft:arrow,nbt={Color:16750080},scores={life=60}] run summon firework_rocket ~ ~ ~ {Silent:1,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;16750080]}],Flight:1}}}}

execute as @e[type=minecraft:arrow,nbt={Color:16750080,inGround:1b}] at @s if score @s life > flareLifeMin value run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:[dropmarker]}
execute at @e[type=minecraft:arrow,nbt={Color:16750080,inGround:1b}] run spreadplayers ~ ~ 1 1 false @e[type=armor_stand,tag=dropmarker]
execute as @e[type=minecraft:arrow,nbt={Color:16750080}] at @s if block ~ ~ ~ water if score @s life > flareLifeMin value run setblock ~ ~2 ~ glass
execute as @e[type=minecraft:arrow,nbt={Color:16750080}] at @s if block ~ ~ ~ water if score @s life > flareLifeMin value run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:[dropmarker]}
execute as @e[type=minecraft:arrow,nbt={Color:16750080}] at @s if block ~ ~ ~ water if score @s life > flareLifeMin value run spreadplayers ~ ~ 1 1 false @e[type=armor_stand,tag=dropmarker]
execute as @e[type=minecraft:arrow,nbt={Color:16750080}] at @s if block ~ ~ ~ water if score @s life > flareLifeMin value run setblock ~ ~2 ~ air
execute as @e[type=minecraft:arrow,nbt={Color:16750080}] at @s if block ~ ~ ~ water if score @s life > flareLifeMin value run scoreboard players set @s life 0

scoreboard players set @e[type=minecraft:arrow,nbt={Color:16750080,inGround:1b}] life 0
execute as @e[type=minecraft:arrow,nbt={Color:16750080,inGround:1b},scores={life=0}] run kill @s

execute at @e[type=armor_stand,tag=dropmarker] run summon minecraft:armor_stand ~ 255 ~ {Tags:[drop],NoGravity:1,Invulnerable:1,Invisible:1}
execute at @e[type=armor_stand,tag=dropmarker] run tellraw @a {"text":"Supply drop incoming!","color":"gold"}
execute at @e[type=armor_stand,tag=dropmarker] run kill @e[type=armor_stand,tag=dropmarker,limit=1,sort=nearest]