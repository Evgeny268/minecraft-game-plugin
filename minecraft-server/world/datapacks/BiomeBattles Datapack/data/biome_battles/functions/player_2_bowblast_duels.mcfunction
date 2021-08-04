clone -147 20 -94 -147 20 -94 -143 20 -130
#clone sign to block more than 2 players from joining
fill -182 28 -169 -182 28 -169 air
#remove leave game sign
tp @s -200.43 27.00 -168.51 5310.27 0.12
item replace entity @s container.0 with bow{Unbreakable:1b,Enchantments:[{id:power,lvl:3},{id:punch,lvl:1}]}
item replace entity @s armor.head with leather_helmet{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s container.1 with arrow 5
spawnpoint @s -192 31 -169
tag @s add BowBlast_Duels
tag @s add Player_2_BowBlast
effect give @s minecraft:instant_health 1 3 true
tag @s add start_countdown
title @a[tag=BowBlast_Duels] title "3"
tellraw @a[tag=BowBlast_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=BowBlast_Duels] "Starts in: 3"