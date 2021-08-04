clear @a[tag=Fast_Pace_Duels]
effect give @a[tag=Fast_Pace_Duels] invisibility 5 50 true
effect give @a[tag=Fast_Pace_Duels] resistance 5 50 true
execute as @a[tag=Fast_Pace_Duels] unless entity @s[x=-85,y=28,z=-212,dx=1,dy=-1,dz=1] run scoreboard players add @s win 1
scoreboard players reset @a[tag=Fast_Pace_Duels] throw_snowball
title @a[tag=Fast_Pace_Duels] actionbar ""
schedule function biome_battles:leave_fastpace_duels 3s append
schedule clear biome_battles:give_stunbomb_player_1
schedule clear biome_battles:give_stunbomb_player_2