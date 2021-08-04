scoreboard players set @a[tag=Crossbow_Duels] PotionCooldown 0
experience set @a[tag=Crossbow_Duels] 0 levels
schedule clear biome_battles:give_potion_player_1
schedule clear biome_battles:give_potion_player_2
scoreboard players reset @a[tag=Crossbow_Duels] drink_potion
title @a[tag=Crossbow_Duels] actionbar ""
clear @a[tag=Crossbow_Duels] minecraft:glass_bottle
give @a[tag=Crossbow_Duels,nbt=!{Inventory:[{id:"minecraft:potion"}]}] minecraft:potion{HealthPot:1b,Potion:"minecraft:water",CustomPotionEffects:[{Id:6,Amplifier:2}],display:{Name:"\"Reusable Healing Potion\""}}