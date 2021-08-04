clone -147 20 -94 -147 20 -94 -141 20 -127
#clone sign to block more than 2 players from joining
fill -230 17 -142 -230 17 -142 air
#remove leave game sign
tp @s -265.95 16.00 -142.02 95310.57 -1.33
tag @s add Knock_Off_Duels
spawnpoint @s -248 29 -142
effect give @s minecraft:jump_boost 1000000 2 true
effect give @s minecraft:resistance 1000000 20 true
item replace entity @s container.0 with minecraft:stick{Enchantments:[{id:knock_back,lvl:1}]}
item replace entity @s container.1 with minecraft:feather{display:{Lore:["\"When held, allows you to fall like a feather!\""]}}
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Knock_Off_Duels] title "3"
tellraw @a[tag=Knock_Off_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Knock_Off_Duels] "Starts in: 3"