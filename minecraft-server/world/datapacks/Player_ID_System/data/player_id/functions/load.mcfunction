#function player_id:load
#@parent #core:load
scoreboard objectives add playerID_static dummy {"text":"Player_ID ","color":"blue","extra":[{"text":"[static]","color":"gray"}]}
scoreboard objectives add playerID_dynamic dummy {"text":"Player_ID ","color":"blue","extra":[{"text":"[dynamic]","color":"dark_gray"}]}
scoreboard objectives add playerID_rejoin minecraft.custom:minecraft.leave_game