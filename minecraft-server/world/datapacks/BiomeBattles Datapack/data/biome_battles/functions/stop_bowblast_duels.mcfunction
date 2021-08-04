clear @a[tag=BowBlast_Duels]
effect give @a[tag=BowBlast_Duels] resistance 5 50 true
effect give @a[tag=BowBlast_Duels] invisibility 5 50 true
scoreboard players set @a[tag=BowBlast_Duels] ArrowCooldown 0
experience set @a[tag=BowBlast_Duels] 0 levels
execute as @a[tag=BowBlast_Duels] unless entity @s[x=-193,y=32,z=-170,dx=2,dy=-1,dz=2] run scoreboard players add @s win 1
execute as @a[tag=BowBlast_Duels,scores={win=1}] unless entity @s[x=-193,y=32,z=-170,dx=2,dy=-1,dz=2] run tp @s -181.61 27.00 -168.50 450.34 -0.87
scoreboard players reset @a[tag=BowBlast_Duels] shoot_bow
title @a[tag=BowBlast_Duels] actionbar ""
schedule clear biome_battles:give_arrows_player_1
schedule clear biome_battles:give_arrows_player_2
schedule function biome_battles:leave_bowblast_duels 3s append