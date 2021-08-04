clone -87 20 -87 -87 20 -87 -81 20 -124
#clone sign to allow players to join again
clone -76 20 -85 -73 23 -88 -56 20 -95
clone -76 20 -85 -73 23 -88 -7 20 -95
#clone the glass cages
clone -79 20 -87 -79 20 -87 -55 21 -94
#clone leave game sign
fill -50 20 -82 -10 20 -105 air
#Remove the Lilypads to reset the game
clear @a[tag=LilyLake_Duels]
effect clear @a[tag=LilyLake_Duels]
spawnpoint @a[tag=LilyLake_Duels] -112 24 -128
tag @a[tag=LilyLake_Duels] remove Reload_Lilypad
tag @a[tag=LilyLake_Duels] remove Player_1_LilyLake
tag @a[tag=LilyLake_Duels] remove Player_2_LilyLake
tp @a[tag=LilyLake_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=LilyLake_Duels] subtitle ""
title @a[tag=LilyLake_Duels] clear
scoreboard players set @a[tag=LilyLake_Duels] win 0
effect give @a[tag=LilyLake_Duels] minecraft:instant_health 1 3 true
tag @a[tag=LilyLake_Duels] remove LilyLake_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $LilyLake_Duels countdown 0
schedule clear biome_battles:leave_lilylake_duels
title @a times 10 60 10