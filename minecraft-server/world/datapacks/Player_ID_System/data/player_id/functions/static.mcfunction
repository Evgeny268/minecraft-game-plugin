#function player_id:static
#@parent player_id:tick
scoreboard players add playerID_dummy playerID_rejoin 1
scoreboard players operation @s playerID_static = playerID_dummy playerID_rejoin