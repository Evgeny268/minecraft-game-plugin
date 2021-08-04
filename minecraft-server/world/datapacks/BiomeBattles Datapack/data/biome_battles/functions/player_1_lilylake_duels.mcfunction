clone -84 20 -87 -84 20 -87 -81 20 -124
#clone sign to allow player 2 to join
tp @s -53.96 20.00 -93.03 33392.08 1.24
item replace entity @s container.0 with minecraft:diamond_sword{CanDestroy:["minecraft:lily_pad"],Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:lily_pad{CanPlaceOn:["minecraft:water"]} 64
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:11546150},Unbreakable:1b}
spawnpoint @s -54 20 -93 -90
tag @s add LilyLake_Duels
tag @s add Reload_Lilypad
tag @s add Player_1_LilyLake
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}