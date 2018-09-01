function battleroyale:reset
summon minecraft:armor_stand ~ 0 ~ {Marker:1, NoGravity:1,Tags:["playareamarker"]}
scoreboard players set prepare value 1
scoreboard players set prepare_waiting value 0
function #battleroyale:dlc_prepare
