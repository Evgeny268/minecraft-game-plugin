effect give @a[tag=Classic_Duels] invisibility 5 50 true
effect give @a[tag=Classic_Duels] resistance 5 50 true
execute as @a[tag=Classic_Duels] unless entity @s[x=-28,y=25,z=-162,dx=-2,dy=1,dz=2] run scoreboard players add @s win 1
schedule function biome_battles:leave_classic_duels 3s append