clone -87 20 -165 -87 20 -165 -115 20 -158
#clone sign to allow players to join again
clone -76 23 -169 -73 20 -166 -141 20 -188
clone -76 23 -169 -73 20 -166 -141 20 -238
#clone the glass cages
clone -87 20 -173 -87 20 -173 -140 21 -186
#clone leave game sign
scoreboard players reset @a[tag=Crossbow_Duels] drink_potion
clear @a[tag=Crossbow_Duels]
effect clear @a[tag=Crossbow_Duels]
spawnpoint @a[tag=Crossbow_Duels] -112 24 -128
tag @a[tag=Crossbow_Duels] remove Reload_Arrow
tp @a[tag=Crossbow_Duels] -111.97 24.00 -126.96 720.16 0.57
tag @a[tag=Crossbow_Duels] remove Player_1_Crossbow
tag @a[tag=Crossbow_Duels] remove Player_2_Crossbow
title @a[tag=Crossbow_Duels] subtitle ""
title @a[tag=Crossbow_Duels] clear
scoreboard players set @a[tag=Crossbow_Duels] PotionCooldown 0
title @a[tag=Crossbow_Duels] actionbar ""
scoreboard players set @a[tag=Crossbow_Duels] win 0
effect give @a[tag=Crossbow_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Crossbow_Duels] remove Crossbow_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Crossbow_Duels countdown 0
schedule clear biome_battles:leave_crossbow_duels
schedule clear biome_battles:give_potion_player_1
schedule clear biome_battles:give_potion_player_2
title @a times 10 60 10