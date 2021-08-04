clone -148 20 -106 -148 20 -106 -143 20 -130
#clone sign to allow player 2 to join
tp @s -181.61 27.00 -168.50 450.34 -0.87
item replace entity @s container.0 with bow{Unbreakable:1b,Enchantments:[{id:power,lvl:3},{id:punch,lvl:1}]}
item replace entity @s armor.head with leather_helmet{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s container.1 with arrow 5
spawnpoint @s -192 31 -169
tag @s add BowBlast_Duels
tag @s add Player_1_BowBlast
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}