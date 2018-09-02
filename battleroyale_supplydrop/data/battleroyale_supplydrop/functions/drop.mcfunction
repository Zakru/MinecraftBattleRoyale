execute at @e[type=armor_stand,tag=centermarker] run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Tags:[dropmarker]}

execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop1 value run spreadplayers ~ ~ 1 254 false @e[type=armor_stand,tag=dropmarker]
execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop2 value run spreadplayers ~ ~ 1 254 false @e[type=armor_stand,tag=dropmarker]
execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop3 value run spreadplayers ~ ~ 1 126 false @e[type=armor_stand,tag=dropmarker]
execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop4 value run spreadplayers ~ ~ 1 62 false @e[type=armor_stand,tag=dropmarker]
execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop5 value run spreadplayers ~ ~ 1 30 false @e[type=armor_stand,tag=dropmarker]
execute at @e[type=armor_stand,tag=centermarker] if score timer value = drop6 value run spreadplayers ~ ~ 1 14 false @e[type=armor_stand,tag=dropmarker]

execute at @e[type=armor_stand,tag=dropmarker] run summon minecraft:armor_stand ~ 255 ~ {Tags:[drop],NoGravity:1,Invulnerable:1,Invisible:1}
execute at @e[type=armor_stand,tag=dropmarker] run kill @e[type=armor_stand,tag=dropmarker,limit=1,sort=nearest]
tellraw @a {"text":"Supply drop incoming!","color":"green"}