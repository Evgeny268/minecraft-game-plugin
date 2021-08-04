clone -125 20 -88 -125 20 -88 -116 20 -97
#clone sign to block more than 2 players from joining
fill -173 21 -24 -173 21 -24 air
#remove leave game sign
tp @s -172.99 20.00 22.16 900.46 -0.87
item replace entity @s container.0 with minecraft:netherite_sword{Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:golden_axe{display:{Lore:["\"Stun your opponent's shield with this sharp axe!\""]},Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}
item replace entity @s armor.head with minecraft:netherite_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:netherite_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable:1b}
item replace entity @s container.2 with gray_dye{display:{Name:"\"Summon Horse Ability\"",Lore:["\"Ability will activate once game starts\""]}}
tag @s add Dark_Knight_Duels
spawnpoint @s -174 26 -1
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Dark_Knight_Duels] title "3"
tellraw @a[tag=Dark_Knight_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Dark_Knight_Duels] "Starts in: 3"