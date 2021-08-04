fill -129 20 -261 -98 30 -301 air replace minecraft:tnt
fill -129 20 -261 -98 30 -301 air replace minecraft:fire
fill -129 20 -261 -98 30 -301 air replace minecraft:cobweb
kill @e[type=tnt]
tag @a[tag=TNT_Duels] remove Reload_TNT
clear @a[tag=TNT_Duels]
effect give @a[tag=TNT_Duels] invisibility 5 50 true
effect give @a[tag=TNT_Duels] resistance 5 50 true
execute as @a[tag=TNT_Duels] unless entity @s[x=-115,y=33,z=-283,dx=38,dy=-2,dz=4] run scoreboard players add @s win 1
schedule function biome_battles:leave_tnt_duels 3s append