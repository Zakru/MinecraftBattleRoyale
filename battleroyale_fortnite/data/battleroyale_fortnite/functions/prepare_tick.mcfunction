execute at @e[tag=playareamarker] if score rift_left value > NONE value run summon creeper ~ ~ ~ {PersistenceRequired:1,DeathLootTable:"empty",ExplosionRadius:0b,powered:1b,Invulnerable:1,NoAI:1,NoGravity:1,Silent:1,ActiveEffects:[{Id:14,Duration:100000,ShowParticles:false}],Tags:[rift]}
execute if score rift_left value > NONE value run scoreboard players remove rift_left value 1

execute at @e[tag=playareamarker] if score rift_left value = NONE value run spreadplayers ~ ~ 64 255 false @e[tag=rift]

execute if score rift_left value = NONE value run scoreboard players remove prepare_waiting value 1
execute if score rift_left value = NONE value run scoreboard players remove rift_left value 1