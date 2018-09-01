worldborder set 1023
execute at @p run summon minecraft:armor_stand 0 0 0 {Tags:["centermarker"],Invisible:1b,Marker:1b}
execute store result entity @e[tag=centermarker,limit=1] Pos[0] double 1 run scoreboard players get BATTLEROYALE_safex value
execute store result entity @e[tag=centermarker,limit=1] Pos[2] double 1 run scoreboard players get BATTLEROYALE_safez value