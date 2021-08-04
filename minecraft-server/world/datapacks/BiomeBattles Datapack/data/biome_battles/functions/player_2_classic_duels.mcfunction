clone -85 20 -82 -85 20 -82 -81 20 -130
#clone sign to block more than 2 players from joining
fill -49 21 -162 -49 21 -162 air
#remove leave game sign
tp @s -6.96 20.00 -160.98 2970.79 1.84
item replace entity @s container.0 with minecraft:diamond_sword{Unbreakable:1b}
item replace entity @s container.1 with minecraft:bow{Unbreakable:1b}
item replace entity @s hotbar.8 with minecraft:golden_apple 3
item replace entity @s container.2 with saddle{display:{Name:"\"Arrow Quiver\"",Lore:["\"You will pull out 20 arrows once game starts!\""]}}
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}
item replace entity @s armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
spawnpoint @s -29 25 -161
tag @s add Classic_Duels
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Classic_Duels] title "3"
tellraw @a[tag=Classic_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Classic_Duels] "Starts in: 3"