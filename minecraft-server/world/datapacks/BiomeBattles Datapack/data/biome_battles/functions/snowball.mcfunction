scoreboard players operation #current Owner0 = @s Owner0
scoreboard players operation #current Owner1 = @s Owner1
scoreboard players operation #current Owner2 = @s Owner2
scoreboard players operation #current Owner3 = @s Owner3
execute as @a if score @s UUID0 = #current Owner0 if score @s UUID1 = #current Owner1 if score @s UUID2 = #current Owner2 if score @s UUID3 = #current Owner3 run tag @s add snowball_owner
effect give @e[tag=!snowball_owner,tag=!Fast_Pace_Duels,distance=..3] instant_damage
effect give @e[tag=!snowball_owner,tag=Fast_Pace_Duels,distance=..3] slowness 3 50
execute as @e[tag=!snowball_owner,tag=Fast_Pace_Duels,distance=..3] run tag @s add stunbomb_hit
tag @a remove snowball_owner