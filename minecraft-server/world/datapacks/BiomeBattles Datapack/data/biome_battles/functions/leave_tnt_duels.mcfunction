fill -129 20 -261 -98 30 -301 air replace minecraft:tnt
fill -129 20 -261 -98 30 -301 air replace minecraft:fire
fill -129 20 -261 -98 30 -301 air replace minecraft:cobweb
kill @e[type=tnt]
#Reset the map
clone -84 20 -165 -84 20 -165 -112 20 -156
#clone sign to allow players to join again
clone -105 24 -252 -102 20 -249 -115 20 -269
clone -105 24 -252 -102 20 -249 -115 20 -296
#clone the glass cages
clone -84 20 -173 -84 20 -173 -114 22 -267
#clone leave game sign
clear @a[tag=TNT_Duels]
effect clear @a[tag=TNT_Duels]
spawnpoint @a[tag=TNT_Duels] -112 24 -128
tag @a[tag=TNT_Duels] remove Reload_TNT
tp @a[tag=TNT_Duels] -111.97 24.00 -126.96 720.16 0.57
title @a[tag=TNT_Duels] subtitle ""
title @a[tag=TNT_Duels] clear
scoreboard players set @a[tag=TNT_Duels] win 0
effect give @a[tag=TNT_Duels] minecraft:instant_health 1 3 true
tag @a[tag=TNT_Duels] remove TNT_Duels
scoreboard players reset $Item_Clearer Clear_Items
scoreboard players set $TNT_Duels countdown 0
schedule clear biome_battles:leave_tnt_duels
title @a times 10 60 10
