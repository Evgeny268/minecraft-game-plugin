clone -87 20 -93 -87 20 -93 -81 20 -130
#clone sign to allow players to join again
clone -73 23 -169 -76 20 -166 -9 20 -163
clone -73 23 -169 -76 20 -166 -50 20 -163
#clone the glass cages
clone -79 20 -93 -79 20 -93 -49 21 -162
#clone leave game sign
clear @a[tag=Classic_Duels]
effect clear @a[tag=Classic_Duels]
spawnpoint @a[tag=Classic_Duels] -112 24 -128
tp @a[tag=Classic_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=Classic_Duels] subtitle ""
title @a[tag=Classic_Duels] clear
scoreboard players set @a[tag=Classic_Duels] win 0
effect give @a[tag=Classic_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Classic_Duels] remove Classic_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Classic_Duels countdown 0
schedule clear biome_battles:leave_classic_duels
title @a times 10 60 10