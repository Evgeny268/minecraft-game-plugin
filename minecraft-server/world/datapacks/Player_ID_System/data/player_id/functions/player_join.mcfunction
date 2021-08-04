#When a player joins the game
tp @s -111.97 24.00 -126.96 720.16 0.57
spawnpoint @s -112 24 -128
scoreboard players reset @s throw_snowball
scoreboard players reset @s throw_enderpearl
scoreboard players reset @s drink_potion
scoreboard players reset @s shoot_bow
clear @s
effect clear @s
gamemode adventure @s
tag @s remove start_countdown
tag @s remove BowBlast_Duels
tag @s remove Player_1_BowBlast
tag @s remove Player_2_BowBlast
tag @s remove Classic_Duels
tag @s remove Crossbow_Duels
tag @s remove Player_1_Crossbow
tag @s remove Player_2_Crossbow
tag @s remove Dark_Knight_Duels
tag @s remove Ender_Duels
tag @s remove Player_1_E
tag @s remove Player_2_E
tag @s remove Player_1_Ender
tag @s remove Player_2_Ender
tag @s remove Fast_Pace_Duels
tag @s remove Player_1_Fast
tag @s remove Player_2_Fast
tag @s remove Knock_Off_Duels
tag @s remove LilyLake_Duels
tag @s remove Player_1_LilyLake
tag @s remove player_2_LilyLake
tag @s remove SkyBridge_Duels
tag @s remove Player_1_SkyBridge
tag @s remove Player_2_SkyBridge
tag @s remove Stealthy_Duels
tag @s remove Snowball_Duels
tag @s remove TNT_Duels
tag @s remove Reload_TNT
tag @s remove Reload_Snowball
tag @s remove Reload_Arrow
tag @s remove Reload_Lilypad
tag @s remove stunbomb_hit
title @s actionbar ""
experience set @s 0 levels
scoreboard players reset @s ArrowCooldown
scoreboard players reset @s EnderCooldown
scoreboard players reset @s jump_timer
scoreboard players reset @s StunBombCooldown
scoreboard players reset @s EnderCooldown
scoreboard players reset @s Ender_Rage
scoreboard players reset @s PotionCooldown
scoreboard players reset @s win
scoreboard players reset @s countdown
title @a times 10 60 10
title @s title {"color":"gold","text":"Welcome To"}
title @s subtitle {"color":"aqua","text":"Biome Battles!"}
tellraw @s {"color":"gold","text":"Welcome To BiomeBattles"}
tellraw @s {"color":"aqua","text":"Made By ShadowCreeperr"}
summon firework_rocket -114.59 20.00 -124.52 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;4408131]}]}}}}
summon firework_rocket -109.53 20.00 -124.51 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;3887386],FadeColors:[I;4408131]}]}}}}
summon firework_rocket -109.56 20.00 -129.52 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;4408131]}]}}}}
summon firework_rocket -114.48 20.00 -129.50 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026],FadeColors:[I;4408131]}]}}}}
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 25
playsound minecraft:entity.player.levelup player @a -112.03 24.00 -126.96