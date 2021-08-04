#function core:internal/uninstall
#@parent core:load
function #core:uninstall
scoreboard players reset * global
scoreboard players reset * const
scoreboard players reset * temp
scoreboard objectives remove global
scoreboard objectives remove const
scoreboard objectives remove temp

tellraw @a {"text":" Player_ID System has been successfully uninstalled!","color":"gold"}

datapack disable "file/Player_ID_System"

gamerule sendCommandFeedback false