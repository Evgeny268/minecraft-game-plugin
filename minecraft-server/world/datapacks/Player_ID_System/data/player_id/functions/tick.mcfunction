#function player_id:tick
#@parent #core:tick
#static
scoreboard players add @a playerID_rejoin 0
scoreboard players add @a playerID_static 0
execute as @a[scores={playerID_static=0}] at @s run function player_id:static
#dynamic
tag @a[scores={playerID_rejoin=1..}] remove playerID_spawn
scoreboard players set @a[tag=!playerID_spawn] playerID_dynamic 0
execute as @a[tag=!playerID_spawn] at @s run function player_id:player_join
execute as @a[tag=!playerID_spawn] at @s run function player_id:dynamic