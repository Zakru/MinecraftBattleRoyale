execute at @e[tag=playareamarker] run summon minecraft:armor_stand ~ ~ ~ {Tags:["centermarker"],Invisible:1b,Marker:1b}
execute at @e[tag=playareamarker] run spreadplayers ~ ~ 0 255 false @e[tag=centermarker]
worldborder set 1023
execute at @e[tag=centermarker] run worldborder center ~ ~
worldborder set 511 180
tellraw @a {"text":"Safezone shrinking!","color":"red"}
