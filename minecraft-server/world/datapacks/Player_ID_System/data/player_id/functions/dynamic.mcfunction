#function player_id:dynamic
#@parent #core:tick
tag @a remove playerID_check
tag @s add playerID_check
function player_id:dynamic_loop
tag @s add playerID_spawn
scoreboard players set @s playerID_rejoin 0