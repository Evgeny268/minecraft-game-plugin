clone -125 20 -88 -125 20 -88 -110 20 -97
#clone sign to block more than 2 players from joining
fill -52 21 -24 -52 21 -24 air
#remove leave game sign
tp @s -52.00 20.00 21.94 1620.03 -1.69
item replace entity @s container.0 with stone_sword{Unbreakable:1b}
item replace entity @s container.1 with magenta_dye{Ender:1b,display:{Name:"\"Teleport Ability\"",Lore:["\"Ability will activate when game starts\""]}}
item replace entity @s container.2 with purple_dye{display:{Name:"\"EnderRage\"",Lore:["\"When health is below 10 HP damage increases!\""]}}
item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Enderman\"}"},SkullOwner:{Id:[I;-674468268,956712272,-1959703568,1525978432],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTUzYjdiY2Q1NmYwYjk1Zjg3ZGQ3OWVkMTc2MzZiZWI5ZDgzNDY3NDQwMTQyMjhlYTJmNmIxMTBiMTQ4YzEifX19"}]}}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:1908001}}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,display:{color:1908001}}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,display:{color:1908001}}
spawnpoint @s -53 28 -1
tag @s add Ender_Duels
tag @s add Player_2_E
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Ender_Duels] title "3"
tellraw @a[tag=Ender_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Ender_Duels] "Starts in: 3"