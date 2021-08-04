clone -145 20 -100 -145 20 -100 -143 20 -124
#clone sign to allow players to join again
clone -153 20 -100 -153 20 -100 -164 21 -106
#clone leave game sign
clear @a[tag=Snowball_Duels]
fill -173 22 -105 -173 20 -107 glass
fill -216 22 -94 -216 20 -96 glass
#replace the glass
clear @a[tag=Snowball_Duels]
effect clear @a[tag=Snowball_Duels]
spawnpoint @a[tag=Snowball_Duels] -112 24 -128
tag @a[tag=Snowball_Duels] remove Reload_Snowball
tp @a[tag=Snowball_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=Snowball_Duels] subtitle ""
title @a[tag=Snowball_Duels] clear
scoreboard players set @a[tag=Snowball_Duels] win 0
effect give @a[tag=Snowball_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Snowball_Duels] remove Snowball_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Snowball_Duels countdown 0
schedule clear biome_battles:leave_snowball_duels
title @a times 10 60 10