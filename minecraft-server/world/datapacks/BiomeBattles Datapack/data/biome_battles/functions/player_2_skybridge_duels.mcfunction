clone -85 20 -82 -85 20 -82 -83 20 -127
#clone sign to block more than 2 players from joining
fill 35 14 -136 35 14 -136 air
#remove leave game sign
tp @s 89.64 13.00 -130.50 449.88 0.03
item replace entity @s container.0 with minecraft:iron_sword{Unbreakable:1b}
item replace entity @s container.1 with minecraft:iron_axe{Unbreakable:1b,CanDestroy:["minecraft:birch_planks"]}
item replace entity @s container.2 with minecraft:birch_planks{CanPlaceOn:["minecraft:gold_block","minecraft:birch_planks"]} 64
item replace entity @s container.3 with minecraft:birch_planks{CanPlaceOn:["minecraft:gold_block","minecraft:birch_planks"]} 32
item replace entity @s container.4 with minecraft:diamond{display:{Lore:["\"Trade this item with the other villager\""]}}
item replace entity @s armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:netherite_boots{Unbreakable:1b}
spawnpoint @s 62 28 -134
tag @s add Player_2_SkyBridge
tag @s add SkyBridge_Duels
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=SkyBridge_Duels] title "3"
tellraw @a[tag=SkyBridge_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=SkyBridge_Duels] "Starts in: 3"