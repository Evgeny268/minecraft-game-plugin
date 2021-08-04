clear @a[tag=Snowball_Duels]
tag @a[tag=Snowball_Duels] remove Reload_Snowball
effect give @a[tag=Snowball_Duels] invisibility 5 50 true
effect give @a[tag=Snowball_Duels] resistance 5 50 true
execute as @a[tag=Snowball_Duels] unless entity @s[x=-194,y=30,z=-100,dx=2,dy=-1,dz=-2] run scoreboard players add @s win 1
schedule function biome_battles:leave_snowball_duels 3s append