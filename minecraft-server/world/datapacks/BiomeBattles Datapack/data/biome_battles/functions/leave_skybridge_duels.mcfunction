clone -87 20 -90 -87 20 -90 -83 20 -127
#clone sign to allow players to join again
clone 17 23 -130 15 20 -128 34 13 -137
clone 17 23 -130 15 20 -128 88 13 -132
#clone the glass cages
clone 17 20 -138 17 20 -138 62 13 -141
#Clone the supply chest
clone -79 20 -90 -79 20 -90 35 14 -136
#clone leave game sign
clear @a[tag=SkyBridge_Duels]
effect clear @a[tag=SkyBridge_Duels]
spawnpoint @a[tag=SkyBridge_Duels] -112 24 -128
tp @a[tag=SkyBridge_Duels] -111.97 24.00 -126.96 720.16 0.57
tag @a[tag=SkyBridge_Duels] remove Player_1_SkyBridge
tag @a[tag=SkyBridge_Duels] remove Player_2_SkyBridge
title @a[tag=SkyBridge_Duels] subtitle ""
title @a[tag=SkyBridge_Duels] clear
scoreboard players set @a[tag=SkyBridge_Duels] win 0
effect give @a[tag=SkyBridge_Duels] minecraft:instant_health 1 3 true
tag @a[tag=SkyBridge_Duels] remove SkyBridge_Duels
fill 63 1 -146 28 21 -121 air replace minecraft:birch_planks
fill 96 21 -121 64 1 -146 air replace minecraft:birch_planks
fill 63 1 -146 28 21 -121 air replace minecraft:fire
fill 96 21 -121 64 1 -146 air replace minecraft:fire
#Remove all bridges built and fire traps
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $SkyBridge_Duels countdown 0
schedule clear biome_battles:leave_skybridge_duels
title @a times 10 60 10