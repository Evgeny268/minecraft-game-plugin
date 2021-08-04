execute at @e[tag=stunbomb_hit] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~
execute at @e[tag=stunbomb_hit] run particle minecraft:explosion ~ ~1 ~
tag @e[tag=stunbomb_hit] remove stunbomb_hit