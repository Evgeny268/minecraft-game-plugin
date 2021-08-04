effect give @a[tag=Dark_Knight_Duels] invisibility 5 50 true
effect give @a[tag=Dark_Knight_Duels] resistance 5 50 true
execute as @a[tag=Dark_Knight_Duels] unless entity @s[x=-175,y=27,z=0,dx=2,dy=-1,dz=-2] run scoreboard players add @s win 1
schedule function biome_battles:leave_darknight_duels 3s append