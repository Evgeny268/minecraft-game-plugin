execute as @a[tag=Player_2_Fast] unless data entity @s Inventory[{id:"minecraft:snowball"}] run give @s minecraft:snowball{display:{Name:"\"StunBomb\"",Lore:["\"Stun your opponent for 4 seconds\""]}} 3
scoreboard players reset @a[tag=Player_2_Fast] throw_snowball
schedule clear biome_battles:give_stunbomb_player_2
title @a[tag=Player_2_Fast] actionbar ""