execute as @a[tag=Player_1_BowBlast] unless data entity @s Inventory[{id:"minecraft:arrow"}] run give @s arrow 5
scoreboard players reset @a[tag=Player_1_BowBlast] shoot_bow
schedule clear biome_battles:give_arrows_player_1
title @a[tag=Player_1_BowBlast] actionbar ""