clone -128 20 -87 -128 20 -87 -110 20 -97
#clone sign to allow player 2 to join
tp @s -52.01 20.00 -23.06 3600.45 -1.18
item replace entity @s container.0 with stone_sword{Unbreakable:1b}
item replace entity @s container.1 with magenta_dye{Ender:1b,display:{Name:"\"Teleport Ability\"",Lore:["\"Ability will activate when game starts\""]}}
item replace entity @s container.2 with purple_dye{display:{Name:"\"EnderRage\"",Lore:["\"When health is below 10 HP damage increases!\""]}}
item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Enderman\"}"},SkullOwner:{Id:[I;-674468268,956712272,-1959703568,1525978432],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTUzYjdiY2Q1NmYwYjk1Zjg3ZGQ3OWVkMTc2MzZiZWI5ZDgzNDY3NDQwMTQyMjhlYTJmNmIxMTBiMTQ4YzEifX19"}]}}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:1908001}}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,display:{color:1908001}}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,display:{color:1908001}}
spawnpoint @s -53 28 -1
tag @s add Ender_Duels
tag @s add Player_1_E
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}