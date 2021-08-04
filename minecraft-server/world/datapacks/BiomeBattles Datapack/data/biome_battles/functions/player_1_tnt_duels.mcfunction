clone -84 20 -168 -84 20 -168 -112 20 -156
#clone sign to allow player 2 to join
tp @s -113.03 21.00 -266.88 181.28 1.99
tag @s add Reload_TNT
item replace entity @s container.0 with blaze_rod{CanDestroy:["minecraft:tnt","fire","cobweb"]}
item replace entity @s container.1 with flint_and_steel{Unbreakable:1b,CanPlaceOn:["minecraft:obsidian","minecraft:bedrock","minecraft:crying_obsidian","tnt"]}
item replace entity @s container.2 with cobweb{CanPlaceOn:["minecraft:obsidian","minecraft:bedrock","minecraft:crying_obsidian","tnt"],display:{Lore:["\"Use this to trap your opponent in a sticky web!\""]}} 10
item replace entity @s armor.head with minecraft:creeper_head
spawnpoint @s -114 31 -281
tag @s add TNT_Duels
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}