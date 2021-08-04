#function player_id:uninstall
#@parent #core:uninstall
scoreboard players reset * playerID_static
scoreboard players reset * playerID_dynamic
scoreboard players reset * playerID_rejoin
scoreboard objectives remove playerID_static
scoreboard objectives remove playerID_dynamic
scoreboard objectives remove playerID_rejoin