clone -134 20 -90 -134 20 -90 -116 20 -97
#clone sign to allow players to join again
clone -173 23 -45 -176 20 -48 -175 20 -25
clone -173 23 -45 -176 20 -48 -175 20 20
#clone the glass cages
clone -134 20 -82 -134 20 -82 -173 21 -24
#clone leave game sign
clear @a[tag=Dark_Knight_Duels]
effect clear @a[tag=Dark_Knight_Duels]
spawnpoint @a[tag=Dark_Knight_Duels] -112 24 -128
tp @a[tag=Dark_Knight_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=BowBlast_Duels] subtitle ""
title @a[tag=Dark_Knight_Duels] clear
scoreboard players set @a[tag=Dark_Knight_Duels] win 0
effect give @a[tag=Dark_Knight_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Dark_Knight_Duels] remove Dark_Knight_Duels
kill @e[type=minecraft:horse]
kill @e[x=-187,y=20,z=-29,dx=27,dy=6,dz=56,type=minecraft:item]
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Dark_Knight_Duels countdown 0
schedule clear biome_battles:leave_darknight_duels
title @a times 10 60 10