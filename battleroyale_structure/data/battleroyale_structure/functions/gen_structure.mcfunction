execute if score structure_spread value = NONE value at @e[tag=playareamarker] run spreadplayers ~ ~ 100 255 false @e[tag=structuremarker]
scoreboard players set structure_spread value 1
execute at @e[tag=structuremarker] unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ #minecraft:logs unless block ~ ~-1 ~ #minecraft:leaves run setblock ~ ~ ~ minecraft:structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "Zakru", rotation: "NONE", posX: -1, mode: "LOAD", posY: -5, sizeX: 3, posZ: -1, integrity: 1.0f, showair: 0b, name: "battleroyale_structure:easter_chest", id: "minecraft:structure_block", sizeY: 12, sizeZ: 4, showboundingbox: 0b}
execute at @e[tag=structuremarker] unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ #minecraft:logs unless block ~ ~-1 ~ #minecraft:leaves run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[tag=structuremarker] at @s unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ #minecraft:logs unless block ~ ~-1 ~ #minecraft:leaves run kill @s
execute as @e[tag=structuremarker] at @s run tp @s ~ ~-1 ~
execute unless entity @e[tag=structuremarker] run scoreboard players remove prepare_waiting value 1
execute unless entity @e[tag=structuremarker] run scoreboard players set structure_done value 1