clear @a[tag=Ender_Duels]
kill @e[type=minecraft:ender_pearl]
effect give @a[tag=Ender_Duels] invisibility 5 50 true
effect give @a[tag=Ender_Duels] resistance 5 50 true
scoreboard players set @a[tag=Ender_Duels] Ender_Rage 0
scoreboard players set @a[tag=Ender_Duels] EnderCooldown 0
execute as @a[tag=Ender_Duels] unless entity @s[x=-54,y=29,z=0,dx=2,dy=-1,dz=-2] run scoreboard players add @s win 1
scoreboard players reset @a[tag=Ender_Duels] throw_enderpearl
title @a[tag=Ender_Duels] actionbar ""
schedule clear biome_battles:give_pearl_player_1
schedule clear biome_battles:give_pearl_player_2
schedule function biome_battles:leave_ender_duels 3s append