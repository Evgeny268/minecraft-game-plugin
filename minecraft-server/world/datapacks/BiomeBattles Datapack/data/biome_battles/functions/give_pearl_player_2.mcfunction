execute as @a[tag=Player_2_Ender] unless data entity @s Inventory[{id:"minecraft:ender_pearl"}] run clear @s magenta_dye
execute as @a[tag=Player_2_Ender] unless data entity @s Inventory[{id:"minecraft:ender_pearl"}] run give @s ender_pearl{Ender:1b}
scoreboard players reset @a[tag=Player_2_Ender] throw_enderpearl
schedule clear biome_battles:give_pearl_player_2
title @a[tag=Player_2_Ender] actionbar ""