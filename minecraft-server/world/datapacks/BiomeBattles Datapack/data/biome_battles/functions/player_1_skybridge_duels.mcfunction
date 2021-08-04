clone -84 20 -90 -84 20 -90 -83 20 -127
#clone sign to allow player 2 to join
tp @s 35.41 13.00 -135.54 2071.40 -0.12
item replace entity @s container.0 with minecraft:iron_sword{Unbreakable:1b}
item replace entity @s container.1 with minecraft:iron_axe{Unbreakable:1b,CanDestroy:["minecraft:birch_planks"]}
item replace entity @s container.2 with minecraft:birch_planks{CanPlaceOn:["minecraft:gold_block","minecraft:birch_planks"]} 64
item replace entity @s container.3 with minecraft:birch_planks{CanPlaceOn:["minecraft:gold_block","minecraft:birch_planks"]} 32
item replace entity @s container.4 with minecraft:emerald{display:{Lore:["\"Trade this item with the other villager\""]}}
item replace entity @s armor.head with minecraft:iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:netherite_boots{Unbreakable:1b}
spawnpoint @s 62 28 -134
tag @s add Player_1_SkyBridge
tag @s add SkyBridge_Duels
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}