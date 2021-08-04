execute as @a[tag=Player_2_BowBlast] unless data entity @s Inventory[{id:"minecraft:arrow"}] run give @s arrow 5
scoreboard players reset @a[tag=Player_2_BowBlast] shoot_bow
schedule clear biome_battles:give_arrows_player_2
title @a[tag=Player_2_BowBlast] actionbar ""