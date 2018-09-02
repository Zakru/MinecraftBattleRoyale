execute as @e[type=minecraft:arrow,nbt={Color:65535,pickup:1b,inGround:1b}] run data merge entity @s {pickup:0b}
execute as @e[type=minecraft:arrow,nbt={Color:65535,pickup:2b,inGround:1b}] run data merge entity @s {pickup:0b}

scoreboard players add @e[type=minecraft:arrow,nbt={Color:65535,pickup:0b}] life 1

execute at @e[type=minecraft:arrow,nbt={Color:65535},scores={life=4}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:65535},scores={life=8}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:65535},scores={life=12}] run effect give @e[distance=..10] minecraft:resistance 1 5 true
execute at @e[type=minecraft:arrow,nbt={Color:65535},scores={life=12}] run summon minecraft:creeper ~ ~ ~ {NoAI:1b,Fuse:0s,Silent:1b,Invulnerable:1b,ignited:1b,ExplosionRadius:5b}
kill @e[type=arrow,nbt={Color:65535},scores={life=12}]