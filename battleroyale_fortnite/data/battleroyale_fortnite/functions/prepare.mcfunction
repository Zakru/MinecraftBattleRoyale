scoreboard players add prepare_waiting value 1


#Telling the game Fortnite DLC is installed

scoreboard players set fortniteInstalled value 1


#Preparing scoreboard stuff

scoreboard objectives add life dummy
scoreboard objectives add riftUsed dummy
scoreboard objectives add usedRift dummy
scoreboard objectives add inAir dummy

scoreboard players set @a usedRift 0
scoreboard players set rift_left value 15