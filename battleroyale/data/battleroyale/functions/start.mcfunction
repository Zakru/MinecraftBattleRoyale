function battleroyale:reset
summon minecraft:armor_stand ~ 0 ~ {Marker:1, NoGravity:1,Tags:["playareamarker"]}
scoreboard players set prepare value 1
scoreboard players set prepare_waiting value 0
team add HideNames
team join HideNames @a
team modify HideNames nametagVisibility never
gamerule mobGriefing false
function #battleroyale:dlc_prepare
