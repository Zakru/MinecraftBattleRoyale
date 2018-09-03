execute if score timer value > NONE value as @a[scores={dead=0,markedalive=0}] run scoreboard players add Alive info 1
execute if score timer value > NONE value as @a[scores={dead=0,markedalive=0}] run scoreboard players set @s markedalive 1
execute if score timer value > NONE value as @a[scores={dead=1,markeddead=0}] run scoreboard players remove Alive info 1
execute if score timer value > NONE value as @a[scores={dead=1,markeddead=0}] run scoreboard players set @s markeddead 1
execute if score timer value > NONE value if score Alive info = TRUE value run scoreboard players add endtimer value 1
execute if score timer value > NONE value if score endtimer value = TRUE value run effect give @a[scores={dead=0}] resistance 10 5 true
execute if score timer value > NONE value if score endtimer value = endtime value run function battleroyale:reset