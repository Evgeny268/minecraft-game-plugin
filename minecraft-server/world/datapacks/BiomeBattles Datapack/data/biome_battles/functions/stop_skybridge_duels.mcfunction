effect give @a[tag=SkyBridge_Duels] invisibility 5 50 true
effect give @a[tag=SkyBridge_Duels] resistance 5 50 true
execute as @a[tag=SkyBridge_Duels] unless entity @s[x=62,y=29,z=-133,dx=-1,dy=-1,dz=-1] run scoreboard players add @s win 1
execute as @a[tag=SkyBridge_Duels,scores={win=1}] unless entity @s[x=62,y=29,z=-133,dx=-1,dy=-1,dz=-1] run tp @s 35.41 13.00 -135.54 2071.40 -0.12
schedule function biome_battles:leave_skybridge_duels 3s append