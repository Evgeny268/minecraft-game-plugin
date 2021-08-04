execute as @a[tag=Player_2_Crossbow] unless data entity @s Inventory[].tag.HealthPot run clear @s glass_bottle
execute as @a[tag=Player_2_Crossbow] unless data entity @s Inventory[].tag.HealthPot run give @s minecraft:potion{HealthPot:1b,Potion:"minecraft:water",CustomPotionEffects:[{Id:6,Amplifier:2}],display:{Name:"\"Reusable Healing Potion\""}}
scoreboard players reset @a[tag=Player_2_Crossbow] drink_potion
schedule clear biome_battles:give_potion_player_2
title @a[tag=Player_2_Crossbow] actionbar ""