clear @a[tag=LilyLake_Duels]
tag @a[tag=LilyLake_Duels] remove Reload_Lilypad
effect give @a[tag=LilyLake_Duels] invisibility 5 50 true
effect give @a[tag=LilyLake_Duels] resistance 5 50 true
fill -50 20 -82 -10 20 -105 minecraft:lily_pad
execute as @a[tag=LilyLake_Duels] unless entity @s[x=-28,y=27,z=-93,dx=-2,dy=-1,dz=-2] run scoreboard players add @s win 1
schedule function biome_battles:leave_lilylake_duels 3s append