# function BiomeBattles:tick
# @parent minecraft:tick
#
execute as @e[type=minecraft:item] run data modify entity @s PickupDelay set value 0
#Stops players form dropping items
execute at @e[type=arrow,nbt={inGround:1b}] run particle minecraft:cloud ~ ~ ~
kill @e[type=arrow,nbt={inGround:1b}]
#Destroys all arrows on the ground
tellraw @a[x=-137,y=20,z=-123,dx=-6,dy=1,dz=6,scores={Conversation=1}] "<Polar Bear> Roar! Me hungry. Me want eat fish!"
execute as @a[x=-137,y=20,z=-123,dx=-6,dy=1,dz=6,scores={Conversation=1}] run playsound minecraft:entity.polar_bear.warning hostile @a -139.11 21.13 -120.50
#What the polar bear says
tellraw @a[x=-122,y=20,z=-156,dx=4,dy=1,dz=3,scores={Conversation=1}] "<Bunny 1> Hey, don't bother us! we are in the middle of a conversation."
tellraw @a[x=-122,y=20,z=-156,dx=4,dy=1,dz=3,scores={Conversation=1}] "<Bunny 2> Have any of you guys met the killer Rabbit?"
tellraw @a[x=-122,y=20,z=-156,dx=4,dy=1,dz=3,scores={Conversation=1}] "<Bunny 3> Wow! TNT duels is now the most popular duel."
execute as @a[x=-122,y=20,z=-156,dx=4,dy=1,dz=3,scores={Conversation=1}] run playsound minecraft:entity.rabbit.hurt ambient @a -119.20 21.00 -154.01
#What the bunnies say
tellraw @a[x=-84,y=20,z=-121,dx=6,dy=1,dz=6,scores={Conversation=1}] "<Sheep> Baa! Baa! Did you know that LilyLake Duels was voted as the funnest duel by the test players? Woo hoo! That's my biome getting good reviews."
execute as @a[x=-84,y=20,z=-121,dx=6,dy=1,dz=6,scores={Conversation=1}] run playsound minecraft:entity.sheep.ambient ambient @a -80.24 21.00 -117.82
#What the sheep says
tellraw @a[x=-120,y=20,z=-104,dx=-6,dy=1,dz=6,scores={Conversation=1}] "<Fox> Fun fact, did you know that there are 0 commandblocks in this map? It only runs on a datapack."
execute as @a[x=-120,y=20,z=-104,dx=-6,dy=1,dz=6,scores={Conversation=1}] run playsound minecraft:entity.fox.ambient ambient @a -122.05 21.00 -100.89
#What the fox says
tellraw @a[x=-106,y=20,z=-119,dx=6,dy=1,dz=-6,scores={Conversation=1}] {"color":"gold","bold":"true","text":"How to Play:"}
tellraw @a[x=-106,y=20,z=-119,dx=6,dy=1,dz=-6,scores={Conversation=1}] "Challenge your friends to duels across the biomes. Each duel has its own armor, abilities, and weapons to fight with depending on the biome you're in. Each duel is self explanitory, but if you have any questions about certain items just press E and hover your mouse over the item to read its description. Have fun!"
execute as @a[x=-106,y=20,z=-119,dx=6,dy=1,dz=-6,scores={Conversation=1}] run playsound minecraft:entity.villager.celebrate master @a -102.26 20.00 -121.58
#How to play description
scoreboard players reset @a Conversation
#Conversations the player can have with mobs in the lobby
execute as @a[tag=!UUID] run function biome_battles:get_uuid
execute as @e[type=snowball,tag=!Owner] run function biome_battles:get_owner
execute as @e[type=snowball] at @s run function biome_battles:snowball
execute as @e[tag=stunbomb_hit] run function biome_battles:szhit_with_stunbomb
#Deal damage with snowballs
execute as @a[tag=Reload_Snowball,nbt=!{Inventory:[{id:"minecraft:snowball"}]}] run give @s snowball 16
#Reloads Snowballs (Snowball Duels)
execute as @a[tag=Reload_Arrow,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run give @s arrow 64
#Reloads Arrows (Crossbow Duels)
execute as @a[tag=Player_1_BowBlast,scores={shoot_bow=5}] run schedule function biome_battles:give_arrows_player_1 5s append
execute as @a[tag=Player_1_BowBlast,scores={shoot_bow=5}] run title @s actionbar "Reloading"
execute as @a[tag=Player_2_BowBlast,scores={shoot_bow=5}] run schedule function biome_battles:give_arrows_player_2 5s append
execute as @a[tag=Player_2_BowBlast,scores={shoot_bow=5}] run title @s actionbar "Reloading"
#Reloads Arrows (BowBlast Duels)
execute as @a[tag=Player_1_Ender,scores={throw_enderpearl=1}] run schedule function biome_battles:give_pearl_player_1 5s append
execute as @a[tag=Player_1_Ender,scores={throw_enderpearl=1}] run title @s actionbar "Teleport Cooldown"
execute as @a[tag=Player_2_Ender,scores={throw_enderpearl=1}] run schedule function biome_battles:give_pearl_player_2 5s append
execute as @a[tag=Player_2_Ender,scores={throw_enderpearl=1}] run title @s actionbar "Teleport Cooldown"
#Reloads Ender Pearls (Ender Duels)
execute as @a[tag=Reload_TNT,nbt=!{Inventory:[{id:"minecraft:tnt"}]}] run give @s tnt{CanPlaceOn:["minecraft:obsidian","minecraft:bedrock","minecraft:crying_obsidian","tnt","cobweb"]} 64
#Reloads TNT (TNT Duels)
execute as @a[tag=Player_1_Crossbow,scores={drink_potion=1}] run schedule function biome_battles:give_potion_player_1 10s append
execute as @a[tag=Player_1_Crossbow,scores={drink_potion=1}] run title @s actionbar "Refilling"
execute as @a[tag=Player_2_Crossbow,scores={drink_potion=1}] run schedule function biome_battles:give_potion_player_2 10s append
execute as @a[tag=Player_2_Crossbow,scores={drink_potion=1}] run title @s actionbar "Refilling"
#Reloads Health Potion (Crossbow Duels)
execute as @a[tag=Player_1_Fast,scores={throw_snowball=3}] run schedule function biome_battles:give_stunbomb_player_1 10s append
execute as @a[tag=Player_1_Fast,scores={throw_snowball=3}] run title @s actionbar "StunBomb Cooldown"
execute as @a[tag=Player_2_Fast,scores={throw_snowball=3}] run schedule function biome_battles:give_stunbomb_player_2 10s append
execute as @a[tag=Player_2_Fast,scores={throw_snowball=3}] run title @s actionbar "StunBomb Cooldown"
#Reloads StunBombs (Fast Pace Duels)
execute as @a[tag=Reload_Lilypad,nbt=!{Inventory:[{id:"minecraft:lily_pad"}]}] run give @s minecraft:lily_pad{CanPlaceOn:["minecraft:water"]} 64
#Reloads lilypads (LilyLake Duels)
execute at @e[type=minecraft:snowball] run particle minecraft:spit ~ ~ ~ 0.1 0.1 0.1 0 0
#Snowball particles
execute at @e[type=minecraft:ender_pearl] run particle minecraft:witch ~ ~ ~ 0 0 0 1 8
#Ender Pearl particles
effect give @a[x=-113,y=20,z=-137,dx=1,dy=0,dz=0] speed 1 5
effect give @a[x=-103,y=20,z=-128,dx=0,dy=0,dz=1] speed 1 5
effect give @a[x=-112,y=20,z=-118,dx=-1,dy=0,dz=0] speed 1 5
effect give @a[x=-122,y=20,z=-127,dx=0,dy=0,dz=-1] speed 1 5
particle minecraft:firework -111.50 20.20 -136.57 0.2 0.2 0.2 0 1
particle minecraft:firework -112.53 20.00 -136.51 0.2 0.2 0.2 0 1
particle minecraft:firework -102.46 20.00 -127.52 0.2 0.2 0.2 0 1
particle minecraft:firework -102.53 20.00 -126.54 0.2 0.2 0.2 0 1
particle minecraft:firework -112.51 20.00 -117.46 0.2 0.2 0.2 0 1
particle minecraft:firework -111.49 20.00 -117.46 0.2 0.2 0.2 0 1
particle minecraft:firework -121.57 20.00 -127.50 0.2 0.2 0.2 0 1
particle minecraft:firework -121.51 20.00 -126.49 0.2 0.2 0.2 0 1
#Speed Boosters in lobby
clear @a[tag=Snowball_Duels] snow_block
clear @a[tag=SkyBridge_Duels] crafting_table
clear @a[tag=SkyBridge_Duels] stick
clear @a[tag=SkyBridge_Duels] birch_button
#Stops players from crafting during duels
execute as @a[tag=Crossbow_Duels] store result score @s Clear_Potions run clear @s potion 0
execute as @a[tag=Crossbow_Duels] if score @s Clear_Potions matches 2 run clear @s potion 1
execute as @a[tag=Crossbow_Duels] store result score @s Clear_Crossbows run clear @s crossbow 0
execute as @a[tag=Crossbow_Duels] if score @s Clear_Crossbows matches 2 run clear @s crossbow 1
#Stops players from having 2 potions and crossbows to avoid glitches (Crossbow Duels)
execute as @a[tag=Ender_Duels,scores={HP=..10}] run effect give @s strength 1
execute as @a[tag=Ender_Duels,scores={HP=10..}] run effect clear @s strength
execute at @a[tag=Ender_Duels,scores={HP=..10}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 1 13
execute at @a[tag=Ender_Duels,scores={HP=0}] run playsound minecraft:entity.enderman.death hostile @a ~ ~ ~
execute as @a[tag=Ender_Duels,scores={HP=..10}] run scoreboard players add @a[tag=Ender_Duels,scores={HP=..10}] Ender_Rage 1
execute at @a[tag=Ender_Duels,scores={Ender_Rage=3}] run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~
execute as @a[tag=Ender_Duels,scores={HP=10..}] run scoreboard players set @a[tag=Ender_Duels,scores={HP=10..}] Ender_Rage 0
#Increases damage to players below 5 hearts (Ender Duels)
execute as @a[tag=Fast_Pace_Duels,scores={HP=0}] run function biome_battles:lightning_fastpace_duels
#Lightning effect for when someone wins (Fast Pace Duels)
kill @e[x=-65,y=27,z=26,dx=1,dy=-7,dz=-53,type=ender_pearl]
kill @e[x=-64,y=27,z=-27,dx=24,dy=-7,dz=-1,type=ender_pearl]
kill @e[x=-41,y=27,z=-27,dx=1,dy=-7,dz=53,type=ender_pearl]
kill @e[x=-41,y=27,z=25,dx=-24,dy=-7,dz=1,type=ender_pearl]
kill @e[x=-64,y=26,z=25,dx=24,dy=4,dz=-53,type=ender_pearl]
#Stops players from leaving the map with ender pearls (Ender Duels)
execute at @a[tag=LilyLake_Duels,x=-50,y=17,z=-105,dx=40,dy=0,dz=23] run particle flame ~ ~ ~ 0 0 0 1 80
execute at @a[tag=LilyLake_Duels,x=-50,y=17,z=-105,dx=40,dy=0,dz=23] run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~
kill @a[tag=LilyLake_Duels,x=-50,y=17,z=-105,dx=40,dy=0,dz=23]
#kills players that fall in the water (Lilly Lake Duels)
execute at @a[tag=BowBlast_Duels,x=-210,y=7,z=-190,dx=38,dy=0,dz=41] run particle minecraft:explosion_emitter ~ ~ ~
execute at @a[tag=BowBlast_Duels,x=-210,y=7,z=-190,dx=38,dy=0,dz=41] run playsound minecraft:entity.generic.explode block @a ~ ~ ~
kill @a[tag=BowBlast_Duels,x=-210,y=7,z=-190,dx=38,dy=0,dz=41]
#Kills players that fall into the void (BowBlast Duels)
execute at @a[tag=Knock_Off_Duels,x=-273,y=1,z=-155,dx=498,dy=0,dz=25] run particle minecraft:explosion_emitter ~ ~ ~
execute at @a[tag=Knock_Off_Duels,x=-273,y=1,z=-155,dx=498,dy=0,dz=25] run playsound minecraft:entity.generic.explode block @a ~ ~ ~
kill @a[tag=Knock_Off_Duels,x=-273,y=1,z=-155,dx=498,dy=0,dz=25]
#Kills playres that fall into the void (Knock Off Duels)
execute at @a[tag=Player_1_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] run particle minecraft:explosion ~ ~ ~
execute at @a[tag=Player_1_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] run playsound minecraft:entity.firework_rocket.large_blast block @a ~ ~ ~
effect give @a[tag=Player_1_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] instant_damage 1 1
teleport @a[tag=Player_1_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] 35.41 13.00 -135.54 2071.40 -0.12
execute at @a[tag=Player_2_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] run particle minecraft:explosion ~ ~ ~
execute at @a[tag=Player_2_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] run playsound minecraft:entity.firework_rocket.large_blast block @a ~ ~ ~
effect give @a[tag=Player_2_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] instant_damage 1 1
teleport @a[tag=Player_2_SkyBridge,x=28,y=1,z=-146,dx=68,dy=0,dz=25] 89.64 13.00 -130.50 449.88 0.03
#Kills playres that fall into the void (SkyBridge Duels)
execute as @a[x=-8,y=20,z=-104,dx=4,dy=0,dz=21,tag=Player_1_LilyLake] run tp @a[tag=Player_2_LilyLake] -28.46 26.00 -93.48 -89.35 90.00
execute as @a[x=-8,y=20,z=-104,dx=4,dy=0,dz=21,tag=Player_1_LilyLake] run summon firework_rocket -53.51 21.00 -103.98  {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11250603]}]}}}}
execute as @a[x=-8,y=20,z=-104,dx=4,dy=0,dz=21,tag=Player_1_LilyLake] run summon firework_rocket -53.59 20.82 -82.00 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11250603]}]}}}}
tp @a[x=-8,y=20,z=-104,dx=4,dy=0,dz=21,tag=Player_1_LilyLake] -53.96 20.00 -93.03 33392.08 1.24
#Player 1
execute as @a[x=-56,y=20,z=-83,dx=4,dy=0,dz=-21,tag=Player_2_LilyLake] run tp @a[tag=Player_1_LilyLake] -28.46 26.00 -93.48 -89.35 90.00
execute as @a[x=-56,y=20,z=-83,dx=4,dy=0,dz=-21,tag=Player_2_LilyLake] run summon firework_rocket -5.40 20.79 -104.00 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;11250603]}]}}}}
execute as @a[x=-56,y=20,z=-83,dx=4,dy=0,dz=-21,tag=Player_2_LilyLake] run summon firework_rocket -5.42 20.69 -82.00 {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;11250603]}]}}}}
tp @a[x=-56,y=20,z=-83,dx=4,dy=0,dz=-21,tag=Player_2_LilyLake] -4.86 20.00 -93.01 1170.85 4.41
#Player 2
#Allows players to win the game when they cross the lake! (LilyLake Duels)
effect give @a[tag=Fast_Pace_Duels,nbt={SelectedItem:{id:"minecraft:sugar"}}] minecraft:speed 1 1
effect clear @a[tag=Fast_Pace_Duels,nbt=!{SelectedItem:{id:"minecraft:sugar"}}] minecraft:speed
execute at @a[tag=Fast_Pace_Duels,nbt={SelectedItem:{id:"minecraft:sugar"}}] run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 13
#Effects people that hold sugar with speed (Fastpase Duels)
effect give @a[tag=Knock_Off_Duels,nbt={SelectedItem:{id:"minecraft:feather"}}] minecraft:slow_falling 1 10
effect clear @a[tag=Knock_Off_Duels,nbt=!{SelectedItem:{id:"minecraft:feather"}}] minecraft:slow_falling
#Effects people that hold feather with slow falling (Knock Off Duels)
scoreboard players add @a[tag=DoubleJump] jump_timer 1
tag @a[tag=Knock_Off_Duels,nbt={FallFlying:1b}] add DoubleJump
clear @a[tag=DoubleJump] minecraft:elytra
tag @a[scores={jump_timer=4}] remove DoubleJump
effect give @a[scores={jump_timer=1}] minecraft:levitation 1 30 true
effect clear @a[scores={jump_timer=4}] minecraft:levitation
scoreboard players set @a[scores={jump_timer=4}] jump_timer 0
#Double Jump Mechanics (Knock Off Duels)
execute as @a[tag=Knock_Off_Duels,nbt={OnGround:1b}] run item replace entity @a[tag=Knock_Off_Duels,nbt={OnGround:1b}] armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}
#Reset Double Jump
execute at @a[tag=Knock_Off_Duels,nbt={FallFlying:1b}] anchored feet run particle minecraft:poof ~ ~ ~ 0.4 0.4 0.4 0 30
execute at @a[tag=Knock_Off_Duels,nbt={FallFlying:1b}] run playsound minecraft:block.slime_block.fall ambient @a ~ ~ ~
#Double Jump Special Effects
fill 28 22 -146 96 30 -121 air replace minecraft:birch_planks
#Stops players from building too high (SkyBridge Duels)
fill -112 31 -279 -115 33 -283 air
#Stops players from glitching blocks (TNT Duels)
execute as @a[tag=start_countdown,tag=BowBlast_Duels] run scoreboard players add $BowBlast_Duels countdown 1
execute as @a[tag=start_countdown,tag=Classic_Duels] run scoreboard players add $Classic_Duels countdown 1
execute as @a[tag=start_countdown,tag=Crossbow_Duels] run scoreboard players add $Crossbow_Duels countdown 1
execute as @a[tag=start_countdown,tag=Dark_Knight_Duels] run scoreboard players add $Dark_Knight_Duels countdown 1
execute as @a[tag=start_countdown,tag=Ender_Duels] run scoreboard players add $Ender_Duels countdown 1
execute as @a[tag=start_countdown,tag=Fast_Pace_Duels] run scoreboard players add $Fast_Pace_Duels countdown 1
execute as @a[tag=start_countdown,tag=Knock_Off_Duels] run scoreboard players add $Knock_Off_Duels countdown 1
execute as @a[tag=start_countdown,tag=LilyLake_Duels] run scoreboard players add $LilyLake_Duels countdown 1
execute as @a[tag=start_countdown,tag=SkyBridge_Duels] run scoreboard players add $SkyBridge_Duels countdown 1
execute as @a[tag=start_countdown,tag=Snowball_Duels] run scoreboard players add $Snowball_Duels countdown 1
execute as @a[tag=start_countdown,tag=Stealthy_Duels] run scoreboard players add $Stealthy_Duels countdown 1
execute as @a[tag=start_countdown,tag=TNT_Duels] run scoreboard players add $TNT_Duels countdown 1
execute as @a[tag=start_countdown] run function biome_battles:countdown
#Countdowns for each duel
execute if score $BowBlast_Duels countdown matches 70 run tag @a[tag=BowBlast_Duels] remove start_countdown
execute if score $BowBlast_Duels countdown matches 60 run fill -183 30 -168 -181 27 -170 air destroy
execute if score $BowBlast_Duels countdown matches 60 run fill -202 30 -168 -200 27 -170 air destroy
execute if score $BowBlast_Duels countdown matches 70 run scoreboard players set $BowBlast_Duels countdown 0
execute if score $Classic_Duels countdown matches 70 run tag @a[tag=Classic_Duels] remove start_countdown
execute if score $Classic_Duels countdown matches 60 run fill -47 23 -163 -50 20 -160 air destroy
execute if score $Classic_Duels countdown matches 60 run fill -6 23 -163 -9 20 -160 air destroy
execute if score $Classic_Duels countdown matches 60 run clear @a[tag=Classic_Duels] saddle
execute if score $Classic_Duels countdown matches 60 run give @a[tag=Classic_Duels] arrow 20
execute if score $Classic_Duels countdown matches 70 run scoreboard players set $Classic_Duels countdown 0
execute if score $Crossbow_Duels countdown matches 70 run tag @a[tag=Crossbow_Duels] remove start_countdown
execute if score $Crossbow_Duels countdown matches 60 run fill -141 23 -188 -138 20 -185 air destroy
execute if score $Crossbow_Duels countdown matches 60 run fill -141 23 -238 -138 20 -235 air destroy
execute if score $Crossbow_Duels countdown matches 60 run item replace entity @a[tag=Crossbow_Duels] weapon.offhand with firework_rocket{display:{Lore:["\"Blast your opponent with a Rocket!\""]},Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,14602026,15435844],FadeColors:[I;11250603,4408131]},{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799],FadeColors:[I;11250603,4408131]}]}} 10
execute if score $Crossbow_Duels countdown matches 65 run give @a[tag=Crossbow_Duels,nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:quick_charge,lvl:1}]}
execute if score $Crossbow_Duels countdown matches 66 run function biome_battles:sz_clear_potion
execute if score $Crossbow_Duels countdown matches 70 run scoreboard players set $Crossbow_Duels countdown 0
execute if score $Dark_Knight_Duels countdown matches 70 run tag @a[tag=Dark_Knight_Duels] remove start_countdown
execute if score $Dark_Knight_Duels countdown matches 60 run fill -172 23 -22 -175 20 -25 air destroy
execute if score $Dark_Knight_Duels countdown matches 60 run fill -172 23 23 -175 20 20 air destroy
execute if score $Dark_Knight_Duels countdown matches 64 run clear @a[tag=Dark_Knight_Duels] gray_dye
execute if score $Dark_Knight_Duels countdown matches 65 run give @a[tag=Dark_Knight_Duels] horse_spawn_egg{CanPlaceOn:["grass","grass_block","spruce_log"],EntityTag:{id:"minecraft:horse",Variant:1028,PersistenceRequired:1b,CanPickUpLoot:0b,Health:40.0f,Attributes:[{Name:"generic.max_health",Base:40.0d},{Name:"generic.movement_speed",Base:0.3d}],ArmorItem:{id:"minecraft:iron_horse_armor",Count:1b},SaddleItem:{id:"minecraft:saddle",Count:1b},Tame:1b,ActiveEffects:[{Id:11,Amplifier:50,Duration:100000,ShowParticles:0b}]}}
execute if score $Dark_Knight_Duels countdown matches 70 run scoreboard players set $Dark_Knight_Duels countdown 0
execute if score $Ender_Duels countdown matches 70 run tag @a[tag=Ender_Duels] remove start_countdown
execute if score $Ender_Duels countdown matches 60 run fill -54 23 -25 -51 20 -22 air destroy
execute if score $Ender_Duels countdown matches 60 run fill -51 23 23 -54 20 20 air destroy
execute if score $Ender_Duels countdown matches 60 run tag @a[tag=Player_1_E] add Player_1_Ender
execute if score $Ender_Duels countdown matches 60 run tag @a[tag=Player_2_E] add Player_2_Ender
execute if score $Ender_Duels countdown matches 60 run clear @a[tag=Ender_Duels] magenta_dye
execute if score $Ender_Duels countdown matches 60 run give @a[tag=Ender_Duels] ender_pearl
execute if score $Ender_Duels countdown matches 70 run scoreboard players set $Ender_Duels countdown 0
execute if score $Fast_Pace_Duels countdown matches 70 run tag @a[tag=Fast_Pace_Duels] remove start_countdown
execute if score $Fast_Pace_Duels countdown matches 60 run fill -83 23 -187 -86 20 -190 air destroy
execute if score $Fast_Pace_Duels countdown matches 60 run fill -86 23 -237 -83 20 -234 air destroy
execute if score $Fast_Pace_Duels countdown matches 70 run scoreboard players set $Fast_Pace_Duels countdown 0
execute if score $Knock_Off_Duels countdown matches 70 run tag @a[tag=Knock_Off_Duels] remove start_countdown
execute if score $Knock_Off_Duels countdown matches 60 run fill -232 19 -141 -229 16 -144 air destroy
execute if score $Knock_Off_Duels countdown matches 60 run fill -268 19 -141 -265 16 -144 air destroy
execute if score $Knock_Off_Duels countdown matches 70 run tellraw @a[tag=Knock_Off_Duels] {"text":"Press the space bar while in the air to Double Jump. Double Jumps recharge once you land on the ground!","color":"green"}
execute if score $Knock_Off_Duels countdown matches 70 run scoreboard players set $Knock_Off_Duels countdown 0
execute if score $LilyLake_Duels countdown matches 70 run tag @a[tag=LilyLake_Duels] remove start_countdown
execute if score $LilyLake_Duels countdown matches 60 run fill -53 23 -95 -56 20 -92 air destroy
execute if score $LilyLake_Duels countdown matches 60 run fill -4 23 -95 -7 20 -92 air destroy
execute if score $LilyLake_Duels countdown matches 70 run scoreboard players set $LilyLake_Duels countdown 0
execute if score $SkyBridge_Duels countdown matches 70 run tag @a[tag=SkyBridge_Duels] remove start_countdown
execute if score $SkyBridge_Duels countdown matches 60 run fill 36 16 -137 34 13 -135 air destroy
execute if score $SkyBridge_Duels countdown matches 60 run fill 90 16 -132 88 13 -130 air destroy
execute if score $SkyBridge_Duels countdown matches 70 run scoreboard players set $SkyBridge_Duels countdown 0
execute if score $Snowball_Duels countdown matches 70 run tag @a[tag=Snowball_Duels] remove start_countdown
execute if score $Snowball_Duels countdown matches 60 run fill -173 22 -105 -173 20 -107 air destroy
execute if score $Snowball_Duels countdown matches 60 run fill -216 22 -94 -216 20 -96 air destroy
execute if score $Snowball_Duels countdown matches 70 run scoreboard players set $Snowball_Duels countdown 0
execute if score $Stealthy_Duels countdown matches 70 run tag @a[tag=Stealthy_Duels] remove start_countdown
execute if score $Stealthy_Duels countdown matches 60 run fill -112 23 -65 -115 20 -68 air destroy
execute if score $Stealthy_Duels countdown matches 60 run fill -112 23 -19 -115 20 -22 air destroy
execute if score $Stealthy_Duels countdown matches 70 run scoreboard players set $Stealthy_Duels countdown 0
execute if score $TNT_Duels countdown matches 70 run tag @a[tag=TNT_Duels] remove start_countdown
execute if score $TNT_Duels countdown matches 60 run fill -115 24 -266 -112 20 -269 air destroy
execute if score $TNT_Duels countdown matches 60 run fill -115 24 -296 -112 20 -293 air destroy
execute if score $TNT_Duels countdown matches 70 run scoreboard players set $TNT_Duels countdown 0
#End Countdowns
execute as @a[tag=BowBlast_Duels,x=-193,y=32,z=-170,dx=2,dy=-1,dz=2] run function biome_battles:stop_bowblast_duels
execute as @a[tag=Classic_Duels,x=-28,y=25,z=-162,dx=-2,dy=1,dz=2] run function biome_battles:stop_classic_duels
execute as @a[tag=Crossbow_Duels,x=-141,y=26,z=-213,dx=2,dy=-1,dz=2] run function biome_battles:stop_crossbow_duels
execute as @a[tag=Dark_Knight_Duels,x=-175,y=27,z=0,dx=2,dy=-1,dz=-2] run function biome_battles:stop_darknight_duels
execute as @a[tag=Ender_Duels,x=-54,y=29,z=0,dx=2,dy=-1,dz=-2] run function biome_battles:stop_ender_duels
execute as @a[tag=Fast_Pace_Duels,x=-85,y=28,z=-212,dx=1,dy=-1,dz=1] run function biome_battles:stop_fastpace_duels
execute as @a[tag=Knock_Off_Duels,x=-249,y=29,z=-142,dx=1,dy=-1,dz=-1] run function biome_battles:stop_knock_off_duels
execute as @a[tag=LilyLake_Duels,x=-28,y=27,z=-93,dx=-2,dy=-1,dz=-2] run function biome_battles:stop_lilylake_duels
execute as @a[tag=SkyBridge_Duels,x=62,y=29,z=-133,dx=-1,dy=-1,dz=-1] run function biome_battles:stop_skybridge_duels
execute as @a[tag=Snowball_Duels,x=-194,y=30,z=-100,dx=2,dy=-1,dz=-2] run function biome_battles:stop_snowball_duels
execute as @a[tag=Stealthy_Duels,x=-113,y=27,z=-44,dx=-2,dy=-1,dz=-2] run function biome_battles:stop_stealthy_duels
execute as @a[tag=TNT_Duels,x=-115,y=33,z=-283,dx=38,dy=-2,dz=4] run function biome_battles:stop_tnt_duels
#Stop the duels
execute if entity @a[tag=BowBlast_Duels,scores={win=3}] run title @a[tag=BowBlast_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Bowblast_Duels"}]
execute if entity @a[tag=BowBlast_Duels,scores={win=3}] run title @a[tag=BowBlast_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=BowBlast_Duels,scores={win=3}] run tellraw @a[tag=BowBlast_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=BowBlast_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Classic_Duels,scores={win=3}] run title @a[tag=Classic_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Classic_Duels"}]
execute if entity @a[tag=Classic_Duels,scores={win=3}] run title @a[tag=Classic_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Classic_Duels,scores={win=3}] run tellraw @a[tag=Classic_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Classic_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Crossbow_Duels,scores={win=3}] run title @a[tag=Crossbow_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Crossbow_Duels"}]
execute if entity @a[tag=Crossbow_Duels,scores={win=3}] run title @a[tag=Crossbow_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Crossbow_Duels,scores={win=3}] run tellraw @a[tag=Crossbow_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Crossbow_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Dark_Knight_Duels,scores={win=3}] run title @a[tag=Dark_Knight_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Dark_Knight_Duels"}]
execute if entity @a[tag=Dark_Knight_Duels,scores={win=3}] run title @a[tag=Dark_Knight_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Dark_Knight_Duels,scores={win=3}] run tellraw @a[tag=Dark_Knight_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Dark_Knight_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Ender_Duels,scores={win=3}] run title @a[tag=Ender_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Ender_Duels"}]
execute if entity @a[tag=Ender_Duels,scores={win=3}] run title @a[tag=Ender_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Ender_Duels,scores={win=3}] run tellraw @a[tag=Ender_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Ender_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Fast_Pace_Duels,scores={win=3}] run title @a[tag=Fast_Pace_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Fast_Pace_Duels"}]
execute if entity @a[tag=Fast_Pace_Duels,scores={win=3}] run title @a[tag=Fast_Pace_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Fast_Pace_Duels,scores={win=3}] run tellraw @a[tag=Fast_Pace_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Fast_Pace_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Knock_Off_Duels,scores={win=3}] run title @a[tag=Knock_Off_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Knock_Off_Duels"}]
execute if entity @a[tag=Knock_Off_Duels,scores={win=3}] run title @a[tag=Knock_Off_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Knock_Off_Duels,scores={win=3}] run tellraw @a[tag=Knock_Off_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Knock_Off_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=LilyLake_Duels,scores={win=3}] run title @a[tag=LilyLake_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=LilyLake_Duels"}]
execute if entity @a[tag=LilyLake_Duels,scores={win=3}] run title @a[tag=LilyLake_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=LilyLake_Duels,scores={win=3}] run tellraw @a[tag=LilyLake_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=LilyLake_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=SkyBridge_Duels,scores={win=3}] run title @a[tag=SkyBridge_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=SkyBridge_Duels"}]
execute if entity @a[tag=SkyBridge_Duels,scores={win=3}] run title @a[tag=SkyBridge_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=SkyBridge_Duels,scores={win=3}] run tellraw @a[tag=SkyBridge_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=SkyBridge_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Snowball_Duels,scores={win=3}] run title @a[tag=Snowball_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Snowball_Duels"}]
execute if entity @a[tag=Snowball_Duels,scores={win=3}] run title @a[tag=Snowball_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Snowball_Duels,scores={win=3}] run tellraw @a[tag=Snowball_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Snowball_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=Stealthy_Duels,scores={win=3}] run title @a[tag=Stealthy_Duels] title [{"selector":"@a[scores={win=3},limit=1],tag=Stealthy_Duels"}]
execute if entity @a[tag=Stealthy_Duels,scores={win=3}] run title @a[tag=Stealthy_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=Stealthy_Duels,scores={win=3}] run tellraw @a[tag=Stealthy_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=Stealthy_Duels"},{"text":" Wins!","color":"gold"}]
execute if entity @a[tag=TNT_Duels,scores={win=3}] run title @a[tag=TNT_Duels] title [{"selector":"@a[scores={win=3},limit=1]tag=TNT_Duels"}]
execute if entity @a[tag=TNT_Duels,scores={win=3}] run title @a[tag=TNT_Duels] subtitle {"text":"Wins!","color":"gold"}
execute if entity @a[tag=TNT_Duels,scores={win=3}] run tellraw @a[tag=TNT_Duels] [{"selector":"@a[scores={win=3},limit=1]tag=TNT_Duels"},{"text":" Wins!","color":"gold"}]
#Title the winner of the duel
execute as @a[tag=Ender_Duels,scores={throw_enderpearl=1}] run scoreboard players add @s EnderCooldown 1
execute as @a[tag=Ender_Duels,scores={EnderCooldown=2}] run give @s magenta_dye{display:{Name:"\"Teleport Ability\"",Lore:["\"Ability is on Cooldown\""]}} 5
execute as @a[tag=Ender_Duels,scores={EnderCooldown=20}] run clear @s magenta_dye 1
execute as @a[tag=Ender_Duels,scores={EnderCooldown=40}] run clear @s magenta_dye 1
execute as @a[tag=Ender_Duels,scores={EnderCooldown=60}] run clear @s magenta_dye 1
execute as @a[tag=Ender_Duels,scores={EnderCooldown=80}] run clear @s magenta_dye 1
execute as @a[tag=Player_1_Ender,scores={EnderCooldown=100}] run scoreboard players set @s EnderCooldown 0
execute as @a[tag=Player_2_Ender,scores={EnderCooldown=100}] run scoreboard players set @s EnderCooldown 0
#Ender Duels Teleport Ability Cooldown
execute as @a[tag=BowBlast_Duels,scores={shoot_bow=5}] run scoreboard players add @s ArrowCooldown 1
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=2}] run experience set @s 5 levels
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=20}] run experience set @s 4 levels
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=40}] run experience set @s 3 levels
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=60}] run experience set @s 2 levels
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=80}] run experience set @s 1 levels
execute as @a[tag=BowBlast_Duels,scores={ArrowCooldown=100}] run experience set @s 0 levels
execute as @a[tag=Player_1_BowBlast,scores={ArrowCooldown=100}] run scoreboard players set @s ArrowCooldown 0
execute as @a[tag=Player_2_BowBlast,scores={ArrowCooldown=100}] run scoreboard players set @s ArrowCooldown 0
#BowBlast Duels Arrow Cooldown
execute as @a[tag=Crossbow_Duels,scores={drink_potion=1}] run scoreboard players add @s PotionCooldown 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=2}] run give @s glass_bottle 9
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=20}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=40}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=60}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=80}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=100}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=120}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=140}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=160}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=180}] run clear @s glass_bottle 1
execute as @a[tag=Crossbow_Duels,scores={PotionCooldown=200}] run clear @s glass_bottle
execute as @a[tag=Player_1_Crossbow,scores={PotionCooldown=200}] run scoreboard players set @s PotionCooldown 0
execute as @a[tag=Player_2_Crossbow,scores={PotionCooldown=200}] run scoreboard players set @s PotionCooldown 0
#Crossbow Duels Potion Cooldown
execute as @a[tag=Fast_Pace_Duels,scores={throw_snowball=3}] run scoreboard players add @s StunBombCooldown 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=2}] run give @s gray_dye{display:{Name:"\"StunBomb Cooldown\"",Lore:["\"Ability is on Cooldown\""]}} 10
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=20}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=40}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=60}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=80}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=100}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=120}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=140}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=160}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=180}] run clear @s gray_dye 1
execute as @a[tag=Fast_Pace_Duels,scores={StunBombCooldown=200}] run clear @s gray_dye
execute as @a[tag=Player_1_Fast,scores={StunBombCooldown=200}] run scoreboard players set @s StunBombCooldown 0
execute as @a[tag=Player_2_Fast,scores={StunBombCooldown=200}] run scoreboard players set @s StunBombCooldown 0
#Fast Pace Duels StunBomb Cooldown
#Countdown until an ability/item's cooldown for EXP bar (Ender Duels, Crossbow Duels, BowBlast Duels)
execute store result score $player_BowBlast count if entity @a[tag=BowBlast_Duels]
execute if score $playerTemp_BowBlast count > $player_BowBlast count run function biome_battles:leave_bowblast_duels
execute store result score $playerTemp_BowBlast count run scoreboard players get $player_BowBlast count
#BowBlast Duels
execute store result score $player_Classic count if entity @a[tag=Classic_Duels]
execute if score $playerTemp_Classic count > $player_Classic count run function biome_battles:leave_classic_duels
execute store result score $playerTemp_Classic count run scoreboard players get $player_Classic count
#Classic Duels
execute store result score $player_Crossbow count if entity @a[tag=Crossbow_Duels]
execute if score $playerTemp_Crossbow count > $player_Crossbow count run function biome_battles:leave_crossbow_duels
execute store result score $playerTemp_Crossbow count run scoreboard players get $player_Crossbow count
#Crossbow DUels
execute store result score $player_Dark count if entity @a[tag=Dark_Knight_Duels]
execute if score $playerTemp_Dark count > $player_Dark count run function biome_battles:leave_darknight_duels
execute store result score $playerTemp_Dark count run scoreboard players get $player_Dark count
#Dark Knight Duels
execute store result score $player_Ender count if entity @a[tag=Ender_Duels]
execute if score $playerTemp_Ender count > $player_Ender count run function biome_battles:leave_ender_duels
execute store result score $playerTemp_Ender count run scoreboard players get $player_Ender count
#Ender Duels
execute store result score $player_Fast count if entity @a[tag=Fast_Pace_Duels]
execute if score $playerTemp_Fast count > $player_Fast count run function biome_battles:leave_fastpace_duels
execute store result score $playerTemp_Fast count run scoreboard players get $player_Fast count
#Fast Pace Duels
execute store result score $player_Knock count if entity @a[tag=Knock_Off_Duels]
execute if score $playerTemp_Knock count > $player_Knock count run function biome_battles:leave_knock_off_duels
execute store result score $playerTemp_Knock count run scoreboard players get $player_Knock count
#Knock Off Duels
execute store result score $player_LilyLake count if entity @a[tag=LilyLake_Duels]
execute if score $playerTemp_LilyLake count > $player_LilyLake count run function biome_battles:leave_lilylake_duels
execute store result score $playerTemp_LilyLake count run scoreboard players get $player_LilyLake count
#LilyLake Duels
execute store result score $player_SkyBridge count if entity @a[tag=SkyBridge_Duels]
execute if score $playerTemp_SkyBridge count > $player_SkyBridge count run function biome_battles:leave_skybridge_duels
execute store result score $playerTemp_SkyBridge count run scoreboard players get $player_SkyBridge count
#SkyBridge Duels
execute store result score $player_Snowball count if entity @a[tag=Snowball_Duels]
execute if score $playerTemp_Snowball count > $player_Snowball count run function biome_battles:leave_snowball_duels
execute store result score $playerTemp_Snowball count run scoreboard players get $player_Snowball count
#Snowball Duels
execute store result score $player_Stealthy count if entity @a[tag=Stealthy_Duels]
execute if score $playerTemp_Stealthy count > $player_Stealthy count run function biome_battles:leave_stealthy_duels
execute store result score $playerTemp_Stealthy count run scoreboard players get $player_Stealthy count
#Steathy Duels
execute store result score $player_TNT count if entity @a[tag=TNT_Duels]
execute if score $playerTemp_TNT count > $player_TNT count run function biome_battles:leave_tnt_duels
execute store result score $playerTemp_TNT count run scoreboard players get $player_TNT count
#TNT Duels
kill @e[type=snowball,x=-160,y=29,z=-114,dx=-69,dy=2,dz=27]
kill @e[type=arrow,x=-126,y=28,z=-240,dx=-28,dy=2,dz=58]
kill @e[type=firework_rocket,x=-126,y=28,z=-240,dx=-28,dy=2,dz=58]
kill @e[type=snowball,x=-70,y=28,z=-240,dx=-29,dy=2,dz=56]
kill @e[type=arrow,x=-171,y=32,z=-149,dx=-40,dy=2,dz=-40]
kill @e[type=snowball,x=96,y=29,z=-121,dx=-68,dy=2,dz=-25]
kill @e[type=arrow,x=-61,y=29,z=-144,dx=68,dy=2,dz=-39]
#Stops players from sending projectiles outside the map
clear @a[tag=!LilyLake_Duels,scores={Death=1..}]
effect clear @a[tag=!LilyLake_Duels,scores={Death=1..}]
execute at @a[tag=!LilyLake_Duels,scores={Death=1..}] run playsound minecraft:entity.elder_guardian.curse hostile @a[tag=!LilyLake_Duels,scores={Death=1..}] ~ ~ ~
execute as @a[scores={Death=1..}] run scoreboard players reset @s Death
#Reset items upon death