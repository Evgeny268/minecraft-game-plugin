clone -81 20 -165 -81 20 -165 -109 20 -158
#clone sign to allow players to join again
clone -73 20 -166 -76 23 -169 -86 20 -190
clone -73 20 -166 -76 23 -169 -86 20 -237
#clone the glass cages
clone -81 20 -173 -81 20 -173 -85 21 -188
#clone leave game sign
scoreboard players reset @a[tag=Snowball_Duels] throw_snowball
clear @a[tag=Fast_Pace_Duels]
effect clear @a[tag=Fast_Pace_Duels]
spawnpoint @a[tag=Fast_Pace_Duels] -112 24 -128
tp @a[tag=Fast_Pace_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=Fast_Pace_Duels] subtitle ""
title @a[tag=Fast_Pace_Duels] clear
scoreboard players set @a[tag=Fast_Pace_Duels] win 0
scoreboard players set @a[tag=Fast_Pace_Duels] StunBombCooldown 0
tag @a[tag=Fast_Pace_Duels] remove Player_1_Fast
tag @a[tag=Fast_Pace_Duels] remove Player_2_Fast
tag @a[tag=Fast_Pace_Duels] remove stunbomb_hit
title @a[tag=Fast_Pace_Duels] actionbar ""
effect give @a[tag=Fast_Pace_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Fast_Pace_Duels] remove Fast_Pace_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Fast_Pace_Duels countdown 0
schedule clear biome_battles:leave_fast_pace_duels
schedule clear biome_battles:give_stunbomb_player_1
schedule clear biome_battles:give_stunbomb_player_2
title @a times 10 60 10