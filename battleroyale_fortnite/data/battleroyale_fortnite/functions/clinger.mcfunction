execute as @e[type=minecraft:arrow,nbt={Color:16733268,pickup:1b,inGround:1b}] run data merge entity @s {pickup:0b}
execute as @e[type=minecraft:arrow,nbt={Color:16733268,pickup:2b,inGround:1b}] run data merge entity @s {pickup:0b}

scoreboard players add @e[type=minecraft:arrow,nbt={Color:16733268,pickup:0b}] life 1

execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=5}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=10}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=15}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=19}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=23}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=27}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=30}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=33}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=36}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=38}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=40}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=42}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=43}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=44}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=45}] run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 2
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=46}] run summon minecraft:tnt
execute at @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=46}] run scoreboard players set @e[type=minecraft:arrow,nbt={Color:16733268},distance=0.01..4,scores={life=..44}] life 45
kill @e[type=minecraft:arrow,nbt={Color:16733268},scores={life=46}]