clone -128 20 -90 -128 20 -90 -110 20 -97
#clone sign to allow players to join again
clone -56 23 -47 -59 20 -50 -54 20 -25
clone -56 23 -47 -59 20 -50 -54 20 20
#clone the glass cages
clone -128 20 -82 -128 20 -82 -52 21 -24
#clone leave game sign
scoreboard players reset @a[tag=Ender_Duels] throw_enderpearl
clear @a[tag=Ender_Duels]
effect clear @a[tag=Ender_Duels]
spawnpoint @a[tag=Ender_Duels] -112 24 -128
tp @a[tag=Ender_Duels] -111.97 24.00 -126.96 720.16 0.57
tag @a[tag=Ender_Duels] remove Player_1_Ender
tag @a[tag=Ender_Duels] remove Player_2_Ender
tag @a[tag=Ender_Duels] remove Player_1_E
tag @a[tag=Ender_Duels] remove Player_2_E
title @a[tag=Ender_Duels] subtitle ""
title @a[tag=Ender_Duels] clear
title @a[tag=Ender_Duels] actionbar ""
scoreboard players set @a[tag=Ender_Duels] win 0
effect give @a[tag=Ender_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Ender_Duels] remove Ender_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Ender_Duels countdown 0
schedule clear biome_battles:leave_ender_duels
schedule clear biome_battles:give_pearl_player_1
schedule clear biome_battles:give_pearl_player_2
title @a times 10 60 10