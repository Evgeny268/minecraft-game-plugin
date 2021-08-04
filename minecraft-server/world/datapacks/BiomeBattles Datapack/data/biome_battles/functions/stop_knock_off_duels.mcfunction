effect give @a[tag=Knock_Off_Duels] invisibility 5 50 true
effect give @a[tag=Knock_Off_Duels] resistance 5 50 true
execute as @a[tag=Knock_Off_Duels] unless entity @s[x=-249,y=29,z=-142,dx=1,dy=1,dz=-1] run scoreboard players add @s win 1
execute as @a[tag=Knock_Off_Duels,scores={win=1}] unless entity @s[x=-249,y=29,z=-142,dx=1,dy=1,dz=-1] run tp @s -230.03 16.00 -141.96 93330.70 -0.87
schedule function biome_battles:leave_knock_off_duels 3s append