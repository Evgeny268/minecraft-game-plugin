clone -85 20 -82 -85 20 -82 -81 20 -124
#clone sign to block more than 2 players from joining
fill -55 21 -94 -55 21 -94 air
#remove leave game sign
tp @s -4.86 20.00 -93.01 1170.85 4.41
item replace entity @s container.0 with minecraft:diamond_sword{CanDestroy:["minecraft:lily_pad"],Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:lily_pad{CanPlaceOn:["minecraft:water"]} 64
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:3949738},Unbreakable:1b}
spawnpoint @s -6 20 -94 90
tag @s add LilyLake_Duels
tag @s add Reload_Lilypad
tag @s add Player_2_LilyLake
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=LilyLake_Duels] title "3"
tellraw @a[tag=LilyLake_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=LilyLake_Duels] "Starts in: 3"