clear @a[tag=Crossbow_Duels]
tag @a[tag=Crossbow_Duels] remove Reload_Arrow
effect give @a[tag=Crossbow_Duels] invisibility 5 50 true
effect give @a[tag=Crossbow_Duels] resistance 5 50 true
execute as @a[tag=Crossbow_Duels] unless entity @s[x=-141,y=26,z=-213,dx=2,dy=-1,dz=2] run scoreboard players add @s win 1
scoreboard players set @a[tag=Crossbow_Duels] PotionCooldown 0
schedule clear biome_battles:give_potion_player_1
schedule clear biome_battles:give_potion_player_2
scoreboard players reset @a[tag=Crossbow_Duels] drink_potion
title @a[tag=Crossbow_Duels] actionbar ""
schedule function biome_battles:leave_crossbow_duels 3s append