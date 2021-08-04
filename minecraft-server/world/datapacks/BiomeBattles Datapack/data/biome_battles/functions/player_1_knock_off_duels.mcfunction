clone -148 20 -103 -148 20 -103 -141 20 -127
#clone sign to allow player 2 to join
tp @s -230.03 16.00 -141.96 93330.70 -0.87
tag @s add Knock_Off_Duels
spawnpoint @s -248 29 -142
effect give @s minecraft:jump_boost 1000000 2 true
effect give @s minecraft:resistance 1000000 20 true
item replace entity @s container.0 with minecraft:stick{Enchantments:[{id:knockback,lvl:1}]}
item replace entity @s container.1 with minecraft:feather{display:{Lore:["\"When held, allows you to fall like a feather!\""]}}
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}