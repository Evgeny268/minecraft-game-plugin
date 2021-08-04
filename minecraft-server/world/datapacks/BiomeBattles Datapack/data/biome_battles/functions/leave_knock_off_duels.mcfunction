clone -145 20 -103 -145 20 -103 -141 20 -127
#clone sign to allow players to join again
clone -213 23 -130 -210 20 -133 -232 16 -144
clone -213 23 -130 -210 20 -133 -268 16 -144
#clone the glass cages
clone -153 20 -103 -153 20 -103 -230 17 -142
#clone leave game sign
clear @a[tag=Knock_Off_Duels]
effect clear @a[tag=Knock_Off_Duels]
spawnpoint @a[tag=Knock_Off_Duels] -112 24 -128
tp @a[tag=Knock_Off_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=Knock_Off_Duels] subtitle ""
title @a[tag=Knock_Off_Duels] clear
scoreboard players set @a[tag=Knock_Off_Duels] win 0
effect give @a[tag=Knock_Off_Duels] minecraft:instant_health 1 3 true
tag @a[tag=Knock_Off_Duels] remove Knock_Off_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $Knock_Off_Duels countdown 0
schedule clear biome_battles:leave_knock_off_duels
title @a times 10 60 10