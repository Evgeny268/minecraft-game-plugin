clone -131 20 -90 -131 20 -90 -113 20 -99
#clone sign to allow players to join again
clone -138 23 -78 -141 20 -81 -115 20 -68
clone -138 23 -78 -141 20 -81 -115 20 -22
#clone the glass cages
clone -131 20 -82 -131 20 -82 -113 21 -67
#clone leave game sign
clear @a[tag=Stealthy_Duels]
effect clear @a[tag=Stealthy_Duels]
spawnpoint @a[tag=Stealthy_Duels] -112 24 -128
tp @a[tag=Stealthy_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=Stealthy_Duels] subtitle ""
title @a[tag=Stealthy_Duels] clear
scoreboard players set @a[tag=Stealthy_Duels] win 0
effect give @a[tag=Stealthy_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Stealthy_Duels] remove Stealthy_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Stealthy_Duels countdown 0
schedule clear biome_battles:leave_stealthy_duels
title @a times 10 60 10