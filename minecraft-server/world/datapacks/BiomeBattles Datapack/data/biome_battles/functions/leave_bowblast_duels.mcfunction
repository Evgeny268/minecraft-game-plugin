clone -145 20 -106 -145 20 -106 -143 20 -130
#clone sign to allow players to join again
clone -164 23 -157 -162 20 -159 -183 27 -170
clone -164 23 -157 -162 20 -159 -202 27 -170
#clone the glass cages
clone -153 20 -106 -153 20 -106 -182 28 -169
#clone leave game sign
scoreboard players reset @a[tag=BowBlast_Duels] shoot_bow
clear @a[tag=BowBlast_Duels]
effect clear @a[tag=BowBlast_Duels]
spawnpoint @a[tag=BowBlast_Duels] -112 24 -128
tp @a[tag=BowBlast_Duels] -111.97 24.00 -126.96 720.16 0.57
scoreboard players set @a[tag=BowBlast_Duels] ArrowCooldown 0
experience set @a[tag=BowBlast_Duels] 0 levels
tag @a[tag=BowBlast_Duels] remove Player_1_BowBlast
tag @a[tag=BowBlast_Duels] remove Player_2_BowBlast
title @a[tag=BowBlast_Duels] subtitle ""
title @a[tag=BowBlast_Duels] clear
title @a[tag=BowBlast_Duels] actionbar ""
scoreboard players set @a[tag=BowBlast_Duels] win 0
effect give @a[tag=BowBlast_Duels] minecraft:instant_health 1 3 true
tag @a[tag=BowBlast_Duels] remove BowBlast_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $BowBlast_Duels countdown 0
schedule clear clear biome_battles:give_arrows_player_1
schedule clear clear biome_battles:give_arrows_player_2
schedule clear biome_battles:leave_bowblast_duels
title @a times 10 60 10