#function player_id:dynamic_loop
#@parent player_id:dynamic
scoreboard players add @s playerID_dynamic 1
tag @a remove playerID_loop
execute as @a[tag=playerID_spawn] if score @s playerID_dynamic = @a[tag=playerID_check,limit=1] playerID_dynamic run tag @a[tag=playerID_check,limit=1] add playerID_loop
execute as @s[tag=playerID_loop] run function player_id:dynamic_loop