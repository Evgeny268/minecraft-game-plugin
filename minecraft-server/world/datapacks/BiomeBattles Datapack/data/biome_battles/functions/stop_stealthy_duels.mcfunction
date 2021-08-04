effect give @a[tag=Stealthy_Duels] invisibility 5 50 true
effect give @a[tag=Stealthy_Duels] resistance 5 50 true
execute as @a[tag=Stealthy_Duels] unless entity @s[x=-113,y=27,z=-44,dx=-2,dy=-1,dz=-2] run scoreboard players add @s win 1
schedule function biome_battles:leave_stealthy_duels 3s append