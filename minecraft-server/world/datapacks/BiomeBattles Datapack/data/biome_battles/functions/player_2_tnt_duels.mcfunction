clone -91 20 -166 -91 20 -166 -112 20 -156
#clone sign to block more than 2 players from joining
fill -114 22 -267 -114 22 -267 air
#remove leave game sign
tp @s -113.01 21.00 -293.87 360.33 0.57
tag @s add Reload_TNT
item replace entity @s container.0 with blaze_rod{CanDestroy:["minecraft:tnt","fire","cobweb"]}
item replace entity @s container.1 with flint_and_steel{Unbreakable:1b,CanPlaceOn:["minecraft:obsidian","minecraft:bedrock","minecraft:crying_obsidian","tnt"]}
item replace entity @s container.2 with cobweb{CanPlaceOn:["minecraft:obsidian","minecraft:bedrock","minecraft:crying_obsidian","tnt"],display:{Lore:["\"Use this to trap your opponent in a sticky web!\""]}} 10
item replace entity @s armor.head with minecraft:creeper_head
spawnpoint @s -114 31 -281
tag @s add TNT_Duels
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=TNT_Duels] title "3"
tellraw @a[tag=TNT_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=TNT_Duels] "Starts in: 3"