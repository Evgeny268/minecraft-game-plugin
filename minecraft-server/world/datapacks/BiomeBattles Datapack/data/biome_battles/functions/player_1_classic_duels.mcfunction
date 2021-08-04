clone -84 20 -93 -84 20 -93 -81 20 -130
#clone sign to allow player 2 to join
tp @s -48.05 20.00 -161.03 8911.58 3.96
item replace entity @s container.0 with minecraft:diamond_sword{Unbreakable:1b}
item replace entity @s container.1 with minecraft:bow{Unbreakable:1b}
item replace entity @s hotbar.8 with minecraft:golden_apple 3
item replace entity @s container.2 with saddle{display:{Name:"\"Arrow Quiver\"",Lore:["\"You will pull out 20 arrows once game starts!\""]}}
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}
item replace entity @s armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
spawnpoint @s -29 25 -161
tag @s add Classic_Duels
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}